inlets = 1; 
outlets = 2; 
var d = new Dict('session'); 
var n; 
function update_name(x){
	n = x+'_session'; 
	d = new Dict(n); 
}
function check_empty(x){
	// post("Session name: "x+"\n"); 
	if(x === ""){post("must enter session name"); outlet(1,"bang")}
		else{d.set(n,x);outlet(0,x); }
	
	}