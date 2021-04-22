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
#### 2.a instrument definer instructions
1. locate `db.instrumentDefiner.maxpat` in the database folder and open patch
1. verify that your control data is being sent to the correct UDP port (choose the port in the instrument definer patch)
1. if possible - be able to turn off continuous data
1. set instrument name
1. set author name
1. quick move through control parameters to get a min and max for each
1. if too much data is sent to the instrument definer it may not be able to handle it. 
1. it is best to send each collection of parameters individually 
1. check through dropdown menu and data windows that all relevant parameters are accounted for
1. save
1. now your instrument definition is read for session capture
### 3. session capture
- session capture is located in teh database folder of the dispersion lab git repo and is called:      
 `d.db.session.capture-mubu-buffer-node-v2.0.maxpat`
1. [session capture](https://youtu.be/MbhJ0SMNBpk) (lind to video)

1. locate `d.db.session.capture-mubu-buffer-node-v2.0.maxpat` in the database folder and open patch
1. verify you are sending data to the right port
1. check data monitor to verify session capture is recieving data
1. choose folder where you will save files from session capture
1. enter session name - use your name with modifiers if necessary
1. choose your instrumemnet from the dropdown menu
1. choose input or output of max (send audio to max if necessary)
1. test by starting session capture - perform for a few seconds/minutes and then stop
1. save -- verify that an audio and json file have been saved in your folder choice
1. verify the data has been captured by opening the mubu viewer
	1. double click on the `p mubu-view` object
	1. double click on the `mubu session`
	1. we view the data in mubu which might take a couple seconds to open 
1. ***IMPORTANT*** do not have the mubu viewer open while recording it will significantly slow down the rate of data capture. Only open the mubu viewer after you have recorded and close before recording again. 


## video documentation
1. screen capture: quicktime
1. video recording from an angle that gets your iteraction contact points: for me it is my hands and head/mouth
<!-- ![Alt text](assets/videoPosition.png "Title") -->
<center><img src="assets/videoPosition.png" alt="drawing" width="75%" /></center>
<!-- // ![alt text](https://github.com/dispersionlab/edis-performer-study/blob/main/assets/videoPosition.png) -->
1. once you have started both screen capture and video recording if you could clap your hands such that we have a sync point for the audio-video
	1. NOTE: If you are using headphones (vs speakers) for your system output (as I do) have the video recorder's audio record the room and the screen capture record the output of your system - and using a microphone that is output through your system - then clap such as to have the sync point. 