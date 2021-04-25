autowatch = 1;
inlets = 1;
outlets = 1;

var patch = this.patcher;
var inlet = patch.getnamed("inlet");
var prepends = [];
var mubuTracks = [];
var poly;
var polyMessage = patch.getnamed("polyMessage");
var audioMult = patch.getnamed("audioMult");

var joins = [];
var oscRoutes = [];

clearNamed();

function scriptTracks(o){
	if(typeof(o) == "object"){
		init();
		var a = arrayCheck(o.tracks);

		for(var i = 0; i < a.length; i++){
			if(mubuTrackConstructorCheck(a[i])){
				var index = a[i].trackIndex - 1;
				var x = (120 * i) + 50;
				var y = (125 * i) + 300;

				prepends[index] = patch.newdefault(x, y, "prepend", "/data");
				prepends[index].varname = "prepend-" + String(index);

				mubuTracks[index] = patch.newdefault(x, y + 30, "mubu_track", "directGesture", a[i].trackIndex, a[i].trackName,
					"@maxsize", "10800s",
					"@matrixcols", String(a[i].numCols),
					"@predef", "yes",
					"@timetagged", "yes",
					"@sampleperiod", "10",
					"@samplerate", "10",
					"@matrixcolnames", a[i].columns,
					"@info", "view", "bounds", "0", "1"
					);
				mubuTracks[index].varname = "mubuTrack-" + String(index);
				patch.connect(prepends[index], 0, mubuTracks[index], 0);
			}
		}

		//poly = patch.newdefault(736, 271, "poly~", "db.rt.yin", "@voices", 1, "@args", a.length + 1);
		//poly.varname = "poly";
		//patch.connect(polyMessage, 0, poly, 0);
		//patch.connect(audioMult, 0, poly, 0);
	}
}


function scriptRoutes(o){
	if(typeof(o) == "object"){
		if(o.hasOwnProperty("namespacesByTrack")){
			var a = arrayCheck(o.namespacesByTrack);
			if(mubuTracks.length && a.length == mubuTracks.length){
				for(var i = 0; i < a.length; i++){
					var index = a[i].trackIndex - 1;
					var namespaces = arrayCheck(a[i].namespaces);

					var x = (120 * i) + 50;
					var y = (125 * i) + 150;

					oscRoutes[index] = patch.newdefault(x, y, "OSC-route", namespaces);
					oscRoutes[index].varname = "oscRoute-" + String(index);
					patch.connect(inlet, 0, oscRoutes[index], 0);

					if(a[i].trackType == "scalar" && namespaces.length > 1){
						joins[index] = patch.newdefault(x, y + 30, "join", namespaces.length);
						joins[index].varname = "joins-" + String(index);

						for(var j = 0; j < namespaces.length; j++){
							patch.connect(oscRoutes[index], j, joins[index], j);
						}

						patch.connect(joins[index], 0, prepends[index], 0);
					}else{
						patch.connect(oscRoutes[index], 0, prepends[index], 0);
					}
				}
			}
		}
	}
}

function mubuTrackConstructorCheck(o){
	return o.hasOwnProperty("trackIndex") && o.hasOwnProperty("trackName") && o.hasOwnProperty("numCols") &&
	o.hasOwnProperty("columns") && o.hasOwnProperty("type")
}

function arrayCheck(s){
	var x = [];
	if(typeof(s) == 'string'){
		x = [s]
		return x
	}else{
		return s	
	}
}

function clearNamed(){
	patch.apply(clear);

	function clear(b){
		if(b.varname != "" && b.varname != "inlet" && b.varname != "polyMessage" && b.varname != "audioMult"){
			patch.remove(b);
		}
	}
}

function init(){
	clearNamed();
	prepends = [];
	mubuTracks = [];
	joins = [];
	oscRoutes = [];
	poly = "";
}

