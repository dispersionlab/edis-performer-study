# Embodied Digital Instrumental Systems: performer-system perspectives
Welcome ....
## Session Capture Module
The session capture module contains 2 separate submodules. The first in the `instrument definer` module that takes your control data sent over udp and creates the necessary information structure (held in a JSON file) that informs the second submodule `session capture` such that it has the necessary components to capture the control data from your performance system. 
### 1. required software and installation 
1. [max 8](https://cycling74.com/downloads) (link)
    - follow the link to download 
#### 1.a Setting Up Max and the mubu package for max
1. In Max, navigate to "File->Show Package Manager"
	* in the Package Manager, search for "Mubu" and install the package
2. In Max, go to "Options->File Preferences"
	* Click the "+" in the lower left
	* Add the path ***main directory????*** 

- DEVELOPMENT NOTE: what other externals are needed if any? Git clone instructions, etc?
### 2. instrument definer
- the instrument definer is located in database folder of the dispersion lab git repo and is called 
`db.instrumentDefiner.maxpat`
1. [instrument definer](https://youtu.be/Jl0v9e7--aI) (link to video) 
1. instructions
### 3. session capture
- session capture is located in teh database folder of the dispersion lab git repo and is called:      
 `d.db.session.capture-mubu-buffer-node-v2.0.maxpat`
1. [session capture](https://youtu.be/MbhJ0SMNBpk) (lind to video)
1. instructions
