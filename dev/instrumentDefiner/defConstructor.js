autowatch = 1;
inlets = 1;
outlets = 2;

// GLOBAL INST DEFS DICTIONARY
var instrumentDefinitions = new Dict("instrumentDefinitions");

function getInstrumentNames(){
	var k = instrumentDefinitions.getkeys();
	outlet(0, k);
	outlet(1, k);

	return k
}

function get(type, inst){
	if(instrumentDefinitions.contains(inst)){
		if(type=="mubuLike"){
			out(mubuLike(inst));
		}else if(type == "mubuTracks"){
			out(mubuTracks(inst));
		}else if(type == "oscRoute"){
			out(oscRoute(inst));
		}else if(type == "preQuery"){
			out(preQuery(inst));
		}else if(type == "descrNorm"){
			out(descrNorm(inst));
		}
	}
}

function mubuLike(inst){
	var o = {}
	o[inst] = {"data":{},
			"analysis": {
				"yin": ["Frequency", "Energy", "Periodicity", "AC1"]
						},
			"mubu" : "1-mubu"		
			};


	var t = instrumentDefinitions.get(inst + "::DATA::TRACKS");
	var k = t.getkeys();

	for(var i = 0; i < k.length; i++){
		o[inst]["data"][k[i]] = t.get(String(k[i]) + "::columns");
	}

	return o
}

function oscRoute(inst){
	if(instrumentDefinitions.contains(inst)){
		var trackDef = mubuTracks(inst);
		var instDef = instrumentDefinitions.get(inst + "::DATA::NAMESPACES");
		var namespaces = instDef.getkeys();
		var trackArray = trackDef.tracks;
		var nsArray = [];

		for(var i = 0; i < trackArray.length; i++){
			var o = {
				"trackIndex" : trackArray[i].trackIndex,
				"trackType" : trackArray[i].type,
				"namespaces" : []
			}

			var scalarNamespaces = [];

			if(trackArray[i].type == "scalar"){
				var cols = trackArray[i].columns;

				for(var j = 0; j < cols.length; j++){
					var found = false;
					for(var k = 0; k < namespaces.length; k++){
						if(instDef.get(namespaces[k] + "::type") == "scalar"){
							if(instDef.get(namespaces[k] + "::mubuTrack") == trackArray[i].trackName &&
								instDef.get(namespaces[k] + "::PARAMS::mubuColumn") == cols[j]){

								var index = instDef.get(namespaces[k] + "::PARAMS::colIndex") - 1;
								scalarNamespaces[index] = namespaces[k];
								found = true;
								break

							} 							
						}
						if(found){break}
					}
				}

				o.namespaces = arrayCheck(scalarNamespaces).slice();
				nsArray[o.trackIndex - 1] = JSON.parse(JSON.stringify(o));

			}else{
				var ns = "";

				for(var j = 0; j < namespaces.length; j++){
					if(instDef.get(namespaces[j] + "::mubuTrack") == trackArray[i].trackName){
						ns = namespaces[j];
						break
					}
				}

				o.namespaces = arrayCheck(ns).slice();
				nsArray[o.trackIndex - 1] = JSON.parse(JSON.stringify(o));
			}
		}
		return {"namespacesByTrack" : nsArray}
	}
}

function mubuTracks(inst){
	if(instrumentDefinitions.contains(inst)){
		var trackArray = [];
		var o = {};

		var tracks = instrumentDefinitions.get(inst + "::DATA::TRACKS");
		var tk = tracks.getkeys();

		for(var i = 0; i < tk.length; i++){
			var t = tracks.get(tk[i]);
			trackArray[t.get("trackIndex")-1] = {
				"trackIndex" : t.get("trackIndex"),
				"trackName" : tk[i],
				"numCols" : arrayCheck(t.get("columns")).length,
				"columns" : arrayCheck(t.get("columns")),
				"type" : t.get("type")
			};
		}

		return {"tracks" : trackArray.sort(sortByIndex)}
	}

	function sortByIndex(a, b){
		return a.trackIndex - b.trackIndex
	}
}

function preQuery(inst){
	if(instrumentDefinitions.contains(inst)){
		var o = {
			"instrument" : inst,
			"numParams" : 0,
			"paramNames" : [],
			"tracks" : {},
			"lookup" : []
		}

		var tracksDict = instrumentDefinitions.get(inst + "::DATA::TRACKS");
	//	post(tracksDict.stringify());
	//	post();
		var lookup = [];
		o.numParams = getParamCount(tracksDict);
		o.paramNames = getOrderedParams(tracksDict, lookup);
		o.tracks = getTracks(tracksDict);
		o.lookup = lookup;
		
		// post(JSON.stringify(o));
		// post();

		return o
	}

	function getParamCount(tracks){
		var tk = tracks.getkeys();
		var count = 0;

		for(var i = 0; i < tk.length; i++){
			var thisTrack = tracks.get(tk[i]);
			var thisCols = arrayCheck_(thisTrack.get("columns"));
			count += thisCols.length;
		}

		return count
	}

	function getOrderedParams(tracks, lookup){
		var tk = tracks.getkeys();
		var trackObjs = [];
		var paramNames = [];

		for(var i = 0; i < tk.length; i++){
			var track = tracks.get(tk[i]);
			var index = track.get("trackIndex");
			trackObjs[index-1] = {
				"trackIndex" : index,
				"parameters" : arrayCheck_(track.get("columns")),
				"trackName" : tk[i]
			}
		}

		trackObjs.sort(sortByIndex);

		for(var i = 0; i < trackObjs.length; i++){
			var params = trackObjs[i].parameters;

			for(var j = 0; j < params.length; j++){
				paramNames.push(params[j]);
				lookup.push(trackObjs[i].trackName);
			}
		}

		return paramNames.slice()

		function sortByIndex(a, b){
			return a.trackIndex - b.trackIndex
		}	
	}

	function getTracks(tracks){
		var tk = tracks.getkeys();
		var o = {};

		for(var i = 0; i < tk.length; i++){
			o[tk[i]] = {
				"trackName" : tk[i],
				"trackIndex" : tracks.get(tk[i] + "::trackIndex"),
				"numParams" : arrayCheck_(tracks.get(tk[i] + "::columns")).length
			}
		}

		return o
	}

}


function descrNorm(inst){
	if(instrumentDefinitions.contains(inst)){
		var descrDef = new Dict();
		var trackDef = mubuTracks(inst);
		var instDef = instrumentDefinitions.get(inst + "::DATA::NAMESPACES");
		var namespaces = instDef.getkeys();
		var trackArray = trackDef.tracks;

		for(var i = 0; i < trackArray.length; i++){
			if(trackArray[i].type == "scalar"){
				var cols = trackArray[i].columns;
				for(var j = 0; j < cols.length; j++){
					var found = false;
					for(var k = 0; k < namespaces.length; k++){
						if(instDef.get(namespaces[k] + "::type") == "scalar"){
							if(instDef.get(namespaces[k] + "::mubuTrack") == trackArray[i].trackName &&
								instDef.get(namespaces[k] + "::PARAMS::mubuColumn") == cols[j]){

								var min = instDef.get(namespaces[k] + "::PARAMS::min");
								var max = instDef.get(namespaces[k] + "::PARAMS::max");

								descrDef.replace(trackArray[i].trackName + "::" + cols[j] + "::min", min);
								descrDef.replace(trackArray[i].trackName + "::" + cols[j] + "::max", max);
								
								found = true;
								break
							} 							
						}
						if(found){break}
					}
				}
			}else{
				for(var j = 0; j < namespaces.length; j++){
					if(instDef.get(namespaces[j] + "::mubuTrack") == trackArray[i].trackName){
						var params = instDef.get(namespaces[j] + "::PARAMS");
						var pk = params.getkeys();
						for(var k = 0; k < pk.length; k++){
							var mubuCol = params.get(pk[k] + "::mubuColumn");
							var min = params.get(pk[k] + "::min");
							var max = params.get(pk[k] + "::max");

							descrDef.replace(trackArray[i].trackName + "::" + mubuCol + "::min", min);
							descrDef.replace(trackArray[i].trackName + "::" + mubuCol + "::max", max);
						}
						break
					}
				}
			}
		}
		var descrObj = JSON.parse(descrDef.stringify());
		return descrObj
	}
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

function out(o){
	outlet(0, o);
	outlet(1, JSON.stringify(o));
}
