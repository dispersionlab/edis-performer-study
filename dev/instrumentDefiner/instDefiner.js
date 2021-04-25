autowatch = 1;
inlets = 1;
outlets = 2;

var patch = this.patcher;
// Metadata GUI objects
var instLabel = patch.getnamed("instLabel");
var authLabel = patch.getnamed("authLabel");

// GUI objects relating to namespace
var boxes = [];
var numBoxes = [];
var labels = [];
var nsMenu = patch.getnamed("nsMenu");
var nsLabel = patch.getnamed("nsLabel");
var trackIndexMenu = patch.getnamed("trackIndexMenu");
var vecIndexMenu = patch.getnamed("vecIndexMenu");
var vecIndexLabel = patch.getnamed("vecIndexLabel");
var colIndexMenu = patch.getnamed("colIndexMenu");
var colIndexLabel = patch.getnamed("colIndexLabel");

// Display variables
var scalVecDisplay = -1;		//0 for scalar, 1 for vector, -1 for off
var currentNs;
var nsIndex;

// Max Dictionaries
var metaDict = new Dict();
var dataDict = new Dict();
var tracksDict = new Dict("tracksDict");
var instDef = new Dict("instDef");

// GLOBAL INST DEFS DICTIONARY
var instrumentDefinitions = new Dict("instrumentDefinitions");

// object to hold all namespaces
var namespaces = {};

// metadata variables
var instName;
var authName;

init();

//////////////////////////////////////////////////////////////////
// handle incoming osc messages
//////////////////////////////////////////////////////////////////

function oscIn(){
	if(instName != ""){
		var a = arrayCheck(arrayfromargs(arguments));
	
		if(validateOSC(a)){
			// if the osc namespace does not exist in namespace object
			if(!namespaces.hasOwnProperty(a[0])){
				addNamespace(a);
				updateNsMenu();
				updateUmenu(numTracks(), trackIndexMenu);
			}else{	//if the namespace does exist, check+update the min and max properties
				var n = a.shift();
				updateMinMax(n, a);
			}
		}
		updateData();
		if(currentNs != "" && nsIndex != -1){
			getNamespace(currentNs, nsIndex);
		}
	}

	// update ns menu after a new namespace has been added
	function updateNsMenu(){
		var ns = new Dict();
		ns.clear();
		ns.parse(JSON.stringify(namespaces));
		
		var keys = ns.getkeys();
		keys = arrayCheck(keys);

		nsMenu.message("clear");

		for(var i = 0; i < keys.length; i++){
			nsMenu.message("append", String(keys[i]));
		}
	}
}

function addNamespace(a){
	var namespace = a[0];				// the namespace
	a.shift();							// value(s)
	var names = namespace.split('/');	// separated osc namespace
	var param = {						// object to hold param data associated with the namespace
		'PARAMS' : {}
	};

	if(a.length == 1){		// for a scalar value
		if(names.length){
			param["type"] = 'scalar';
			if(names[names.length - 2 != ""]){
				param["mubuTrack"] = names[names.length - 2];
			}else{
				param["mubuTrack"] = names[names.length - 1];
			}
			param['PARAMS']["mubuColumn"] = names[names.length - 1];
			param['PARAMS']["colIndex"] = 1;
			param['PARAMS']["min"] = a[0];
			param['PARAMS']["max"] = a[0];
		}
	}else{					// for a vector of values
		for(var i = 0; i < a.length; i++){
			if(names.length){
				param.type = 'vector';
				param.mubuTrack = names[names.length - 1];

				var vParam = {
					'mubuColumn' : String.fromCharCode(i+97),
					'colIndex' : i+1,
					'min' : a[i],
					'max' : a[i]
				}
				param['PARAMS'][String(i)] = vParam;
			}
		}
	}

	addTrack(param);
	namespaces[namespace] = param;
}

function addTrack(o){
	if(o.hasOwnProperty("type")){
		if(o.type == "scalar"){
			if(!tracksDict.contains(o.mubuTrack)){
				addNewTrack(o, "scalar");
			}else{
				addExistingTrack(o,"scalar");
			}
		}else{
			if(!tracksDict.contains(o.mubuTrack)){
				addNewTrack(o, "vector");
			}else{
				addExistingTrack(o, "vector");
			}
		}
	}

	function addNewTrack(o, type){

		var trackIndex = numTracks() + 1;
		var cols = [];
		var newTrack = {
			"type" : type,
			"trackIndex" : trackIndex,
			"columns" : []
		};

		if(type == "scalar"){
			cols = [o["PARAMS"]["mubuColumn"]];
		}else{
			// if the incoming track is a vector, get all of its elements
			var elements = Object.keys(o["PARAMS"]);
			for(var i = 0; i < elements.length; i++){
				// post(parseInt(o["PARAMS"][elements[i]]["mubuColumn"]));
				// post();
				var char = o["PARAMS"][elements[i]]["mubuColumn"];
				cols.push(char);
			}
			// cols = elements;
		}

		newTrack["columns"] = arrayCheck(cols);
		tracksDict.setparse(o.mubuTrack, JSON.stringify(newTrack));
	}

	function addExistingTrack(o, type){
		var existing = tracksDict.get(o.mubuTrack);

		if(type == "scalar"){
		// if the incoming track is scalar type
			if(existing.get("type") == "scalar"){
			// if the existing track is scalar type
				var cols = existing.get("columns");
				cols = arrayCheck(cols);

				var contains = false;
				for(var i = 0; i < cols.length; i++){
					if(o["PARAMS"]["mubuColumn"] == cols[i]){
						contains = true;
						break;
					}
				}

				if(contains){
					o["PARAMS"]["mubuColumn"] = incrementCol(o["PARAMS"]["mubuColumn"]);
				}

				tracksDict.append(String(o.mubuTrack) + "::columns", o["PARAMS"]["mubuColumn"]);
				o["PARAMS"]["colIndex"] = tracksDict.get(String(o.mubuTrack) + "::columns").length;

			}else{
			// if the existing track is vector type
				addTrack(incrementTrack(o));
			}
		}else{
		// if the incoming track is vector type
			addTrack(incrementTrack(o));	
		}

		function incrementTrack(o){
			var endNum = o.mubuTrack.match(/\d+$/);

			if(endNum){
				o.mubuTrack = String(o.mubuTrack.slice(0, -endNum[0].length)) + String(parseInt(endNum[0], 10) + 1);
			}else{
				o.mubuTrack = String(o.mubuTrack) + "-1";
			}

			return o
		}

		function incrementCol(c){
			var endNum = c.match(/\d+$/);
			var n = c;

			if(endNum){
				n = c.slice(0, -endNum[0].length) + String(parseInt(endNum[0], 10) + 1);
			}else{
				n = c + "-1";
			}

			return n
		}
	}
}


// FUNCTION FOR UPDATING MIN AND MAX AUTOMATICALLY GOES HERE:

function updateMinMax(name, val){
	var o = namespaces[name];


	if(o.type == 'scalar'){
		check(o['PARAMS'], val[0]);
	}else{
		var t = tracksDict.get(o["mubuTrack"]);
		var cols = t.get("columns");

		var paramKeys = arrayCheck(Object.keys(o["PARAMS"]));

		if(val.length == paramKeys.length){
			for(var i = 0; i < paramKeys.length; i++){

				check(o['PARAMS'][paramKeys[i]], val[i]);
			}
		}
	}

	function check(param, v){
		var x = false;
		if(v < param.min){param.min = v; x = true;};
		if(v > param.max){param.max = v; x = true;};
		return x
	}
}

//////////////////////////////////////////////////////////////////
//FUNCTIONS FOR DISPLAY INTERFACE STUFF
//////////////////////////////////////////////////////////////////

function getNamespace(s, n){
	if(instName != ""){
		if(scalVecDisplay == -1){
			showHidden();
		}

		if(namespaces.hasOwnProperty(s)){
			currentNs = s;
			nsIndex = n;
			var o = namespaces[s];

			boxes[0].set(o["mubuTrack"]);
			var t = tracksDict.get(o["mubuTrack"]);
			trackIndexMenu.set(t.get("trackIndex")-1);

			if(o.type == "scalar"){
				scalVecDisplay = 0;

				updateUmenu(arrayCheck(t.get("columns")).length, colIndexMenu);
				colIndexMenu.set(n);

				boxes[1].set(o["PARAMS"]["mubuColumn"]);
				numBoxes[0].set(o["PARAMS"]["min"]);
				numBoxes[1].set(o["PARAMS"]["max"]);
			}else{
				scalVecDisplay = 1;

				updateUmenu(t.get("columns").length, vecIndexMenu);
				vecIndexMenu.set(n);

				boxes[1].set(o["PARAMS"][n]["mubuColumn"]);
				numBoxes[0].set(o["PARAMS"][n]["min"]);
				numBoxes[1].set(o["PARAMS"][n]["max"]);
			}
		}
		colVecSwap(scalVecDisplay);
	}


	function showHidden(){
		hide(labels, 0);
		hide(numBoxes, 0);
		hide(boxes, 0);

		trackIndexMenu.sendbox("hidden", 0);
	}

	function colVecSwap(n){
		var m = 1 - n;

		colIndexMenu.sendbox("hidden", n);
		colIndexLabel.sendbox("hidden", n);

		vecIndexMenu.sendbox("hidden", m);
		vecIndexLabel.sendbox("hidden", m);
	}
}

function updateUmenu(n, m){
	var items = m.getattr("items");
	// items = arrayCheck(items);
	var filtItems;

	if(items=="<empty>"){
		for(var i = 0; i < n; i++){
			m.message("append", String(i+1));
		}
	}else{
		items = arrayCheck(items);
		filtItems = items.filter(function(e, i){
			return i % 2 === 0;
		});

		if(filtItems.length != n){
			m.message("clear");
			for(var i = 0; i < n; i++){
				m.message("append", String(i+1));
			}
		}
	}
}

function getNamespaceByIndex(n){
	if(instName != "" && currentNs != ""){
		getNamespace(currentNs, n);
	}
}

//////////////////////////////////////////////////////////////////
//Functions to set and update data
//////////////////////////////////////////////////////////////////

function setMin(n){
	if(currentNs != "" && nsIndex != -1){
		var o = namespaces[currentNs];

		if(o.type == 'scalar'){
			o['PARAMS'].min = n;
		}else{
			o['PARAMS'][nsIndex].min = n;
		}
		updateData();
	}
}

function setMax(n){
	if(currentNs != "" && nsIndex != -1){
		var o = namespaces[currentNs];

		if(o.type == 'scalar'){
			o['PARAMS'].max = n;
		}else{
			o['PARAMS'][nsIndex].max = n;
		}
		updateData();
	}
}

function setTrackName(t){
	if(currentNs != ""){
		var o = namespaces[currentNs];
		var old = JSON.parse(JSON.stringify(o));
		var changed = false;

		if(t != String(o.mubuTrack)){
			if(tracksDict.contains(t)){
						var trackType = tracksDict.get(o.mubuTrack + "::type");
		
						if(o.type == "scalar" && trackType == "scalar"){
							o.mubuTrack = t;
							var colCopy = arrayCheck_(tracksDict.get(t+"::columns")).slice();
							var colName = String(o.PARAMS.mubuColumn);
		
							while(colCopy.indexOf(colName) >= 0){
								colName = incrementString(colName);
							}
		
		
							tracksDict.append(t+"::columns", colName);
							o.PARAMS.mubuColumn = colName;
							o.PARAMS.colIndex = arrayCheck_(tracksDict.get(t+"::columns")).length;
		
							changed = true;
		
						}else{
							//increment incoming track name and recursively call setTrackName
							t = incrementString(t);
							setTrackName(t);
						}
		
			}else{
				//track does not exist
				o.mubuTrack = t;

				if(o.type == "scalar"){
					o.PARAMS.colIndex = 1;
				}

				addTrack(o);
				changed = true;
			}
		
			if(changed){
				cleanup();
			}
		}
		updateData();
	}

	function cleanup(){
		var trackRemoved = false;
		var oldTrackIndex = tracksDict.get(old.mubuTrack + "::trackIndex");

		if(old.type == "scalar"){
			var columns = arrayCheck_(tracksDict.get(old.mubuTrack + "::columns")).splice();

			if(columns.indexOf(old.PARAMS.mubuColumn) + 1){
				columns.splice(columns.indexOf(old.PARAMS.mubuColumn), 1);
				columns = arrayCheck_(columns);
			}

			if(columns === undefined || columns.length == 0){
				tracksDict.remove(old.mubuTrack);
				trackRemoved = true;
			}else{
				for(var i = 0; i < columns.length; i++){
					var keys = Object.keys(namespaces);
					for(var j = 0; j < keys.length; j++){
						var p = namespaces[keys[j]];
						if(p.type == "scalar"){
							if(p.mubuName == old.mubuName && p.PARAMS.mubuColumn == old["PARAMS"][columns[i]]){
								p.PARAMS.colIndex = i + 1;
							}
						}
					}
				}
			}

		}else{
			tracksDict.remove(old.mubuTrack);
			trackRemoved = true;
		}

		if(trackRemoved){
			var keys = arrayCheck(tracksDict.getkeys());

			for(var i = 0; i < keys.length; i++){
				var n = tracksDict.get(keys[i]+"::trackIndex");
				if(n > oldTrackIndex){
					tracksDict.replace(keys[i]+"::trackIndex", n - 1);
				}
			}
		}
	}
}

function setTrackIndex(n){
	if(currentNs != ""){
		n++;
		var o = namespaces[currentNs];
		var oldTrackIndex = tracksDict.get(o.mubuTrack + "::trackIndex");

		tracksDict.replace(o.mubuTrack + "::trackIndex", n);

		var keys = arrayCheck(tracksDict.getkeys());

		for(var i = 0; i < keys.length; i++){
			if(tracksDict.get(keys[i] + "::trackIndex") == n && keys[i] != o.mubuTrack){
				tracksDict.replace(keys[i] + "::trackIndex", oldTrackIndex);
				break;
			}
		}

		updateData();
	}
}

function setColumnName(c){
	if(currentNs != ""){
		var o = namespaces[currentNs];
		var old = JSON.parse(JSON.stringify(o));

		if(o.type == "scalar"){
			if(o.PARAMS.mubuColumn != c){
				var t = tracksDict.get(o.mubuTrack);
				var colCopy = arrayCheck_(t.get("columns")).slice();

				if(colCopy.indexOf(c) + 1){
					while(colCopy.indexOf(c) + 1){
						c = incrementString(c);
					}
				}


				var oldIndex = colCopy.indexOf(o.PARAMS.mubuColumn);
				colCopy[oldIndex] = c;
				trackDict.replace(o.mubuTrack + "::columns", colCopy);

				o.PARAMS.mubuColumn = c;
				// cleanupTrackColumns(o.mubuTrack);
			
			}
		}else{	//the track type is vector
			if(o["PARAMS"][nsIndex]["mubuColumn"] != c){
				var t = tracksDict.get(o.mubuTrack);
				var colCopy = arrayCheck_(t.get("columns")).slice();

				if(colCopy.indexOf(c) + 1){
					while(colCopy.indexOf(c) + 1){
						c = incrementString(c);
					}
				}

				var oldIndex = colCopy.indexOf(o["PARAMS"][nsIndex]["mubuColumn"]);
				colCopy[oldIndex] = c;
				tracksDict.replace(o.mubuTrack + "::columns", colCopy);

				o["PARAMS"][nsIndex]["mubuColumn"] = c;
				// cleanupTrackColumns(o.mubuTrack);
			}

		}
		updateData();
	}
}

function setColumnIndex(n){
	if(currentNs != ""){
		var o = namespaces[currentNs];
		n++;

		if(o.type == "scalar"){
			if(o.PARAMS.colIndex != n){
				var t = tracksDict.get(o.mubuTrack);
				var colCopy = arrayCheck_(t.get("columns")).slice();

				var oIndex = colCopy.indexOf(o.PARAMS.mubuColumn)
				var nIndex = n-1;

				var oItem = colCopy[nIndex];
				var nItem = colCopy[oIndex];

				colCopy[nIndex] = nItem;
				colCopy[oIndex] = oItem;

				tracksDict.replace(o.mubuTrack + "::columns", colCopy);

				updateColumnIndex(o.mubuTrack);
			}
		}else{
			if(o["PARAMS"][nsIndex]["colIndex"] != n){
				var t = tracksDict.get(o.mubuTrack);
				var colCopy = arrayCheck_(t.get("columns")).slice();

				var oIndex = colCopy.indexOf(o["PARAMS"][nsIndex]["mubuColumn"]);
				var nIndex = n-1;

				var oItem = colCopy[nIndex];
				var nItem = colCopy[oIndex];

				colCopy[nIndex] = nItem;
				colCopy[oIndex] = oItem;

				tracksDict.replace(o.mubuTrack + "::columns", colCopy);

				updateColumnIndex(o.mubuTrack);
			}
		}
		updateData();
	}
}


function updateColumnIndex(o){
	var t = tracksDict.get(o.mubuTrack)


	var cols = arrayCheck_(t.get("columns"));
	var nsKeys = Object.keys(namespaces);
	var numToUpdate = cols.length;
	var numUpdated = 0;

	for(var i = 0; i < cols.length; i++){
		for(var j = 0; j < nsKeys.length; j++){
			var p = namespaces[nsKeys[j]];

			if(p.type == "scalar"){
				if(p.mubuTrack == o.mubuTrack && p.PARAMS.mubuColumn == cols[i]){
					p.PARAMS.colIndex = String(i + 1);
					numUpdated++;
					break
				}
			}else if(p.type == "vector"){
				var pKeys = Object.keys(p.PARAMS);
				for(var k = 0; k < pKeys.length; l++){
					if(p.mubuTrack == o.mubuTrack && p["PARAMS"][pKeys[k]]["mubuColumn"] == cols[i]){
						p["PARAMS"][pKeys[k]]["colIndex"] = String(i + 1);
						numUpdated++;
						break
					}
				}
			}
		}

		if(numUpdated == numToUpdate){
			break
		}

	}
}

//////////////////////////////////////////////////////////////////
//Functions to set and update metadata
//////////////////////////////////////////////////////////////////

function setInstrument(s){
	if(s != ""){
		instName = s;
		instLabel.sendbox("hidden", 0);
		instLabel.set(s);
		updateMeta();

		nsLabel.sendbox("hidden", 0);
		nsMenu.sendbox("hidden", 0);
	}
}

function setAuthor(s){
	authName = s;
	authLabel.sendbox("hidden", 0);
	authLabel.set(s);
	updateMeta();
}

function updateMeta(){
	var date = new Date();
	metaDict.replace("instrumentName", instName);
	metaDict.replace("author", authName);
	metaDict.replace("dateCreated", date.toString());

	updateDef();
}

//////////////////////////////////////////////////////////////////
// Update to data dict
//////////////////////////////////////////////////////////////////

function updateData(){
	dataDict.clear();
	dataDict.setparse("NAMESPACES", JSON.stringify(namespaces));
	dataDict.setparse("TRACKS", tracksDict.stringify());

	updateDef();
}

//////////////////////////////////////////////////////////////////
// Functions to update current working instrument definition
//////////////////////////////////////////////////////////////////

function updateDef(){
	instDef.setparse("METADATA", metaDict.stringify());
	instDef.setparse("DATA", dataDict.stringify());
}

function save(){
	if(instName != ""){
		instrumentDefinitions.setparse(instName, instDef.stringify());
		// instrumentDefinitions.export_json("instrumentDefinitions.json");
		outlet(1, "save 1");
		// if(!instrumentDefinitions.contains(instName)){
		// 	instrumentDefinitions.setparse(instName, instDef.stringify());
		// 	// instrumentDefinitions.export_json("instrumentDefinitions.json");
		// 	outlet(1, "save 1");
		// }else{
		// 	instName = incrementInst(instName);
		// 	save();
		// }		
	}

	function incrementInst(s){
			var endNum = s.match(/\d+$/);
			if(endNum){
				s = s.slice(0, -endNum[0].length) + String(parseInt(endNum[0], 10) + 1);
			}else{
				s = s + "-1";
			}
			return s
		}
}


//////////////////////////////////////////////////////////////////
// Functions to load an existing instrument definition
//////////////////////////////////////////////////////////////////

function load(def){
	if(!instrumentDefinitions.contains(def)){
		return
	}

	init();

	definition = instrumentDefinitions.get(def);
	definition = JSON.parse(definition.stringify());


	//set global variables
	instName = definition["METADATA"]["instrumentName"];
	instLabel.sendbox("hidden", 0);
	instLabel.set(instName);

	nsLabel.sendbox("hidden", 0);
	nsMenu.sendbox("hidden", 0);



	authName = definition["METADATA"]["author"];
	authLabel.sendbox("hidden", 0);
	authLabel.set(authName);

	namespaces = definition["DATA"]["NAMESPACES"];

	metaDict.parse(JSON.stringify(definition["METADATA"]))
	dataDict.parse(JSON.stringify(definition["DATA"]))
	tracksDict.parse(JSON.stringify(definition["DATA"]["TRACKS"]))
	instDef.parse(JSON.stringify(definition));

	updateNsMenu();
	updateUmenu(numTracks(), trackIndexMenu);

	function updateNsMenu(){
		var ns = new Dict();
		ns.clear();
		ns.parse(JSON.stringify(namespaces));
		
		var keys = ns.getkeys();
		keys = arrayCheck(keys);

		nsMenu.message("clear");

		for(var i = 0; i < keys.length; i++){
			nsMenu.message("append", String(keys[i]));
		}
	}

}


//////////////////////////////////////////////////////////////////
// Initialize instrument definer
//////////////////////////////////////////////////////////////////

function init(){
	// Get + reset all named objects
	initLabels();
	initNumBoxes();
	initTextBoxes();

	nsMenu.message("clear");
	trackIndexMenu.message("clear");
	vecIndexMenu.message("clear");
	colIndexMenu.message("clear");

	instLabel.message("set");
	authLabel.message("set");

	//Hide necessary UI objects
	hide(labels, 1);
	hide(numBoxes, 1);
	hide(boxes, 1);

	nsMenu.sendbox("hidden", 1);
	trackIndexMenu.sendbox("hidden", 1);
	vecIndexMenu.sendbox("hidden", 1);
	colIndexMenu.sendbox("hidden", 1);

	nsLabel.sendbox("hidden", 1);
	vecIndexLabel.sendbox("hidden", 1);
	colIndexLabel.sendbox("hidden", 1);

	instLabel.sendbox("hidden", 1);
	authLabel.sendbox("hidden", 1);

	scalVecDisplay = -1;

	//reset global variables
	instName = "";
	authName = "";
	namespaces = new Object();
	currentNs = "";
	nsIndex = -1;

	metaDict.clear();
	dataDict.clear();
	tracksDict.clear();
	instDef.clear();

	function initNumBoxes(){
		numBoxes.push(patch.getnamed("minBox"));
		numBoxes.push(patch.getnamed("maxBox"));

		for(var i = 0; i < numBoxes.length; i++){
			numBoxes[i].set(0);
		}
	}

	function initTextBoxes(){
		boxes.push(patch.getnamed("mubuTrackBox"));
		boxes.push(patch.getnamed("mubuColumnBox"));

		for(var i = 0; i < boxes.length; i++){
			boxes[i].message("clear");
		}
	}

	function initLabels(){
		labels.push(patch.getnamed("trackIndexLabel"));
		labels.push(patch.getnamed("mubuTrackLabel"));
		labels.push(patch.getnamed("mubuColumnLabel"));
		labels.push(patch.getnamed("minLabel"));
		labels.push(patch.getnamed("maxLabel"));
	}
}

function hide(a, n){
	a = arrayCheck(a);
	for(var i = 0; i < a.length; i++){
		a[i].sendbox("hidden", n)
	}
}

function numTracks(){
	if(tracksDict.getkeys()){
		return arrayCheck(tracksDict.getkeys()).length;
	}
	return 0
}

function validateOSC(a){
	var x = false;
	if(typeof(a[0]) == 'string' && a[0][0] == '/'){
		x = true;
	}
	return x
}

function incrementString(c){
	var endNum = c.match(/\d+$/);
	var n = c;

	if(endNum){
		n = c.slice(0, -endNum[0].length) + String(parseInt(endNum[0], 10) + 1);
	}else{
		n = c + "-1";
	}

	return n
}

function arrayCheck(s){
	if(typeof(s) == 'string'){
		s = [s]
	}
	return s
}

function arrayCheck_(s){
	var x = [];
	if(typeof(s) == 'string'){
		x = [s]
		return x
	}else{
		return s	
	}
}

function out(s){
	outlet(0, String(s));
}