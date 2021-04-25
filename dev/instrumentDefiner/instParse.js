autowatch = 1;
inlets = 1;
outlets = 1;

var patch = this.patcher;
var vecMenu = patch.getnamed("vectorMenu");
var vecMenuLabel = patch.getnamed("vectorMenuLabel");
var instLabel = patch.getnamed("instLabel");
var authLabel = patch.getnamed("authLabel");
var boxes = [];
var numBoxes = [];
var labels = [];

var metaDict = new Dict();
var dataDict = new Dict();
var instDef = new Dict("instDef");

var instrumentDefinitions = new Dict("instrumentDefinitions");

var namespaces = {}; // hold all unique namespaces received during a session 
	/* each namespace is a key to a subdictionary that contains a corresponding mubu track namespace
	and mubu column name*/
var instName;	// instrument name, set by user
var authorName;

var displaying;		//0 for displaying a scalar, 1 for displaying a vector
var currentNs; 		// store the currently displayed namespace
var currentIndex;	// currently displayed vector index

init();	

function oscIn(){
	if(instName != ""){
		var a = arrayCheck(arrayfromargs(arguments));
	
		if(validateOSC(a)){
			// if the osc namespace does not exist in namespace object
			if(!namespaces.hasOwnProperty(a[0])){
				addNamespace(a);
				nsMenu();
			}else{	//if the namespace does exist, check+update the min and max properties
				var n = a.shift();
				updateMinMax(n, a);
			}
			// out(JSON.stringify(namespaces));
		}
		updateData();
	}
}

function addNamespace(a){
// parsing an osc message to map a namespace to a mubu container
	/* default mapping of namespace to mubu track and column is based on the number
	of values in a given osc namespace

	
	if there is a single value, it is mapped to a mubu track with the name of the second
	to last name in the namespace, on a mubu column with the final name in the namespace

	ie. /myInstrument/granular/size 60

	namespace: '/myInstrument/granular/size 60'
	index: 0
	mubu track: granular
	mubu column: size

	if there is an array of values, they are mapped to a mubu track with the name of the final
	name in the namespace, and each value of the array is mapped to a mubu column named by
	the array index of the value + 1

	ie. /myInstrument/params 80 5 0.1 2501 0.25

	namespace: '/myInstrument/params'
	index: 0
	mubu track: params
	mubu column: 1

	namespace: '/myInstrument/params'
	index: 1
	mubu track: params
	mubu column: 2

	namespace: '/myInstrument/params'
	index: 2
	mubu track: params
	mubu column: 3

	etc.
*/
	var namespace = a[0];				// the namespace
	var names = namespace.split('/');	// separated osc namespace
	var param = {						// object to hold param data associated with the namespace
		'type' : "",
		'mubuTrack' : "",
		'PARAMS' : {}
	}

	a.shift();

	if(a.length == 1){		// for a scalar value
		if(names.length){
			param.type = 'scalar';
			param["mubuTrack"] = names[names.length - 2];
			param['PARAMS']["mubuColumn"] = names[names.length - 1];
			param['PARAMS']["index"] = 0;
			param['PARAMS']["min"] = a[0];
			param['PARAMS']["max"] = a[0];
		}
	}else{					// for a vector of values
		for(var i = 0; i < a.length; i++){
			if(names.length){
				param.type = 'vector';
				param.mubuTrack = names[names.length - 1];

				var vParam = {
					'mubuColumn' : String(i+1),
					'index' : i,
					'min' : a[i],
					'max' : a[i]
				}
				param['PARAMS'][String(i)] = vParam;
			}
		}
	}
	namespaces[namespace] = param;
}

function updateMinMax(name, val){
	
	var o = namespaces[name];
	var updating = false;
	var updatedCol = -1;

	if(o.type == 'scalar'){
		updating = check(o['PARAMS'], val[0]);
	}else{
		// var cols = [];
		var cols = getVectorCols(o);
		var numVecParams = cols.length;

		if(numVecParams == val.length){
			for(var i = 0; i < cols.length; i++){
				
				if(check(o['PARAMS'][cols[i]], val[i])){
					updating = true;
					updatedCol = i;
				}
			}
		}
	}

	// if the displayed namespace is the same as the namespace currently being updated,
	// update the display
	if(name == currentNs && updating){
		if(updatedCol == -1){
			getNamespace(currentNs, 0);
		}else{
			getNamespace(currentNs, updatedCol);
		}
	}

	function check(param, v){
		var x = false;
		if(v < param.min){param.min = v; x = true;};
		if(v > param.max){param.max = v; x = true;};
		return x
	}

}

function getVectorCols(o){
	var cols = [];
	var numVecParams = 0;
	var tempDict = new Dict("tempDict");
	tempDict.parse(JSON.stringify(o['PARAMS']));
	var keys = tempDict.getkeys();

	//Get stored vector length 
	for(var i = 0; i < keys.length; i++){
		if(keys[i] != "type" && keys[i] != "mubuTrack"){
			cols[numVecParams] = String(keys[i]);
			numVecParams++;
		}
	}
	return cols
}

function getNamespace(s, n){
	if(instName != ""){
		if(namespaces.hasOwnProperty(s)){
			currentNs = s;
			var o = namespaces[s];
			var param = {
				'type' : o["type"],
				'namespace' : s,
				'mubuTrack' : o["mubuTrack"],
			}

			showHidden();
	
			if(o.type == "scalar"){
				displaying = 0;
				currentIndex = -1;

				param['mubuColumn'] = o['PARAMS']['mubuColumn'];
				param['min'] = o['PARAMS']['min'];
				param['max'] = o['PARAMS']["max"];

				returnNamespace(param);
			}else{
				displaying = 1;
				currentIndex = n;
				if(!n){		
					var cols = getVectorCols(o);
					setVectorMenu(cols.length);
				}
				param['mubuColumn'] = o['PARAMS'][n]['mubuColumn'];
				param['min'] = o['PARAMS'][n]['min'];
				param['max'] = o['PARAMS'][n]['max'];
				returnNamespace(param);
			}
			vectorMenuDisplay(1 - displaying);
		}
	}
}

function getNamespaceIndex(n){
	if(instName != ""){
		if(displaying){
			getNamespace(currentNs, n);
		}
	}
}

function returnNamespace(o){
	out("/retrieve /type " + String(o.type));
	out("/retrieve /namespace " + String(o.namespace));
	out("/retrieve /mubuTrack " + String(o.mubuTrack));
	out("/retrieve /mubuColumn " + String(o.mubuColumn));
	out("/retrieve /min " + String(o.min));
	out("/retrieve /max " + String(o.max));
}

function nsMenu(){
	var ns = new Dict("namespaceDict");
	ns.clear();
	ns.parse(JSON.stringify(namespaces));
	var keys = ns.getkeys();
	keys = arrayCheck(keys);

	out("/nsMenu clear");
	for(var i = 0; i < keys.length; i++){
		out("/nsMenu append " + String(keys[i]));
	}
}


function setVectorMenu(n){
	out("/retrieve /length clear");
	for(var i = 0; i < n; i++){
		out("/retrieve /length append " + String(i + 1));
	}
}

function vectorMenuDisplay(n){
	vecMenu.sendbox("hidden", n);
	vecMenuLabel.sendbox("hidden", n);
}

function setTrack(s){
	var o = namespaces[currentNs];
	o.mubuTrack = s;
	updateData();
}

function setColumn(s){
	var o = namespaces[currentNs];

	if(o.type == 'scalar'){
		o['PARAMS'].mubuColumn = s;
	}else{
		var n = vecMenu.getvalueof();
		o['PARAMS'][n].mubuColumn = s;
	}
	updateData();
}

function setMin(n){
	var o = namespaces[currentNs];

	if(o.type == 'scalar'){
		o['PARAMS'].min = n;
	}else{
		var v = vecMenu.getvalueof();
		o['PARAMS'][v].min = n;
	}
	updateData();
}

function setMax(n){
	var o = namespaces[currentNs];

	if(o.type == 'scalar'){
		o['PARAMS'].max = n;
	}else{
		var v = vecMenu.getvalueof();
		o['PARAMS'][v].max = n;
	}
	updateData();
}

function setInstrument(s){
	instName = s;
	instLabel.sendbox("hidden", 0);
	instLabel.set(s);
	setMetaData();
}

function setAuthor(s){
	authorName = s;
	authLabel.sendbox("hidden", 0);
	authLabel.set(s);
	setMetaData();
}

function setMetaData(){
	var date = new Date();
	metaDict.replace("instrumentName", instName);
	metaDict.replace("author", authorName);
	metaDict.replace("dateCreated", date.toString());

	updateDef();
}

function updateData(){
	dataDict.clear();
	dataDict.parse(JSON.stringify(namespaces));

	updateDef();
}

function updateDef(){
	instDef.clear();
	instDef.setparse("METADATA", metaDict.stringify());
	instDef.setparse("DATA", dataDict.stringify());
}

function validateOSC(a){
	var x = false;
	if(typeof(a[0]) == 'string' && a[0][0] == '/'){
		x = true;
	}
	return x
}

function arrayCheck(s){
	if(typeof(s) == 'string'){
		s = [s]
	}
	return s
}

function showHidden(){
	for(var i = 0; i < boxes.length; i++){
		boxes[i].sendbox("hidden", 0);
	}

	for(var i = 0; i < numBoxes.length; i++){
		numBoxes[i].sendbox("hidden", 0);
	}

	for(var i = 0; i < labels.length; i++){
		labels[i].sendbox("hidden", 0);
	}
}

function init(){
	out("/nsMenu clear");
	out("/retrieve /length clear");

	var x = 0;
	instName = "";
	authorName = "";
	namespaces = new Object();
	currentNs = "";

	metaDict.clear();
	dataDict.clear();
	instDef.clear();

	boxes.push(patch.getnamed("mubuTrackBox"));
	boxes.push(patch.getnamed("mubuColumnBox"));

	numBoxes.push(patch.getnamed("minBox"));
	numBoxes.push(patch.getnamed("maxBox"));

	labels.push(patch.getnamed("selectedLabel"));
	labels.push(patch.getnamed("selectedLabel-1"));
	labels.push(patch.getnamed("mubuTrackLabel"));
	labels.push(patch.getnamed("mubuColumnLabel"));
	labels.push(patch.getnamed("minLabel"));
	labels.push(patch.getnamed("maxLabel"));

	for(var i = 0; i < boxes.length; i++){
		boxes[i].message("clear");
		boxes[i].sendbox("hidden", 1);
	}

	for(var i = 0; i < numBoxes.length; i++){
		numBoxes[i].set(x);
		numBoxes[i].sendbox("hidden", 1);
	}

	for(var i = 0; i < labels.length; i++){
		labels[i].sendbox("hidden", 1);
	}

	vecMenu.sendbox("hidden", 1);
	vecMenuLabel.sendbox("hidden", 1);

	instLabel.message("set");
	instLabel.sendbox("hidden", 1);

	authLabel.message("set");
	authLabel.sendbox("hidden", 1);
}

function save(){
	if(instName != ""){
		instrumentDefinitions.setparse(instName, instDef.stringify());
		instrumentDefinitions.export_json("instrumentDefinitions.json");
	}
}

function out(s){
	outlet(0, String(s));
}