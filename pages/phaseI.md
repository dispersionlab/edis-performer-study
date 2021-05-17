# PHASE I
# Embodied Digital Instrumental Systems: performer-system perspectives
- return to [phase II](../README.md)

Welcome to the information page for the study *EDIS: performer-system perspectives*. Currently we are in **Phase 1** of the study. The main outcomes are: 

1. complete the questionnaire
1. document a 20-30 minute performance (informed by tutorials)
1. complete a guided reflection
1. setup an interview date & time. 

There are some aids to help this process go smoothly including:  
1. instructions for: 
    1. the `session capture` module for capturing control data and audio output of your performance session
    1. video documenting your performance session 
1. process for submitting your files as a compressed folder

## OVERVIEW

0. Timeline
1. Instructions: Session Capture module
1. Instructions: Video + Screen capture
1. Questionnaire link
1. Notes on documenting the 20-30 min performance session
1. Instructions for guided reflection
1. Submitting your files
1. Setting up an interview date/time

## 0.0 TIMELINE

For Phase I of the study 
- please go over items 1 & 2 - the instructions for the `session capture` module and the video + screen capture today (Monday April 26th) or tomorrow (Tuesday April 27th) - if possible, such that if any issues arise, we can resolve them as soon as possible - ideally by Wednesday April 28th.
- please aim to have the main outcomes completed by Thursday April 29th or Friday April 30th, such that we can schedule interviews for early the following week (Week of May 3rd) as it is important to have the interviews completed before we can start [Phase II](../README.md). 
- If there is an issue, please let me know so that we can adjust accordingly - `life happens and I would like this experience to be as stress free as possible for you`. 

## 1.0 INSTRUCTIONS: SESSION CAPTURE MODULE


<details open >
<summary>click to collapse/expand section</summary>

<br/>

The session capture module contains 2 separate submodules: 
- the first is the `instrument definer` module that receives your control data sent over udp and creates the necessary information structure (held in a JSON file) that informs 
- the second submodule `session capture` with the necessary components to capture the control data and audio output from your performance system. 

In order for `session capture` to function correctly we need to ensure: 
1. we have the necessary software installed: max (aka maxMSP), MUBU max package, and the phase I study related software.  
1. we can send control data from our digital instrumental system to maxMSP for using the `instrument definer`
1. we can also send audio (as well as control data) from our digital instrumental system to maxMSP for using `session capture`

### 1.1 required software and installation 
1. [max 8](https://cycling74.com/downloads) (link)
    - follow the link to download and install max
    - if you do not own max 8 - you will be able to use it free for one month. 
    - if you have already used the free trial period you will still be able to run the software for this study - you just will not be able to save any changes made to max patches (which is not part of this study - so we should not be affected by this).
    - an FYI - software made in max are called patches. 
1. Add the MUBU max package: 
    - once max is installed, open max and navigate to `File/Show Package Manager` (see image/gif below)
    * in the Package Manager, search for `Mubu` and install the package (the button will be green for you)
    <br/>
    <img src="../assets/edis-mubupackage.gif" alt="drawing" width="70%" />
    <br/>
    <br/>

1. Download/clone the dispersion lab software from this GitHub repository
    - navigate to the `green code button` near the top of this page, click on it, and select download. A compressed file will be downloaded to your downloads folder. Move this folder to the directory you would like it to be. 
    <br/>
    <img src="../assets/edis-githubDownload.gif" alt="drawing" width="70%" />
    <br/>
    <br/>

    - for those with git installed you can clone the repo.
1. In max, go to `Options/File Preferences...`
    * Click the "+" in the lower left corner
    * Add the path of the main directory (`edis-performer-study folder`) that you downloaded or cloned from this GitHub repository 

    <img src="../assets/edis-maxFilePaths.gif" alt="drawing" width="70%" />
    <br/>
    <br/>

### 1.2 instrument definer
- the instrument definer is located the top level of the `edis-performer-study folder`. The file is named: `db.instrumentDefiner.maxpat`

#### 1.2.1 sending your control data to max
- send your control data in OSC format over UDP
- ***`NOTE`***: please contact me as soon as possible if you are experiencing issues sending control data from your instrumental system OR you have issues with `instrument definer` (below) recognizing the data you are sending, such that I can help work out a solution.

#### 1.2.2 instrument definer instructions
-  [instrument definer](https://youtu.be/--z0qM8KyEU) (link to video instructions)
    1. locate `db.instrumentDefiner.maxpat` in the `edis-performer-study` folder and open the patch. 
    1. verify that your control data is being sent to the correct UDP port (choose the port in the `instrument definer` patch)
    1. set the instrument name: this will be the name you choose from `session capture`
    1. set author name (optional)
    1. move through each of your control parameters
    1. depending on the amount of data you are sending at one time and/or the controllers/sensors you are using, `instrument definer` may slow down. If this is continually an issue, if possible, reduce the amount of data you are sending at one time - see video above. If this remains an issue, please contact me such that we can work out a solution.  
    1. if possible, it is best to send each collection of parameters individually 
    1. check through the dropdown menu that all relevant parameters are accounted for
    1. save
    1. now your instrument definition is ready for session capture
- close `instrument definer`
### 1.3 session capture
- session capture is located in the database folder of the dispersion lab git repo and is called: `d.db.session.capture-mubu-buffer-v2.0.maxpat`
#### 1.3.1 sending audio (and control data) to session capture
1. if you were able to send control data to `instrument definer` - then you are able to send it to `session capture`
1. If maxMSP is not the software you are using to render the audio output of your performance, you will need to route your audio to maxMSP. 
- `NOTE`: The process is the same as sending your audio output from whatever software renders your audio to a DAW or some other software to record it, in our case this would be `max`. Thus, if you are already able to send audio to another program - do what is familiar - what follows is for those who are not setup for internal mapping of audio. 
    - for PC users: 
        - [Voicemeeter (PC only)](https://vb-audio.com/Voicemeeter/)
        - [tutorial](https://www.youtube.com/watch?v=lpvae_2WOSQ) (start at 4:30 - it is not explicitly for max, but the setup should be the same) Please let me know if this is not the case. 
    - for max users: 
        - [Blackhole](https://existential.audio/blackhole/) (link to software)
        - [Loopback](https://rogueamoeba.com/loopback/) (link to software)
        - [setting up blackhole (mac only)](https://youtu.be/_HLnpK5X7c0) (link to video)


#### 1.3.2 session capture instructions
- do not have `instrument definer` open 
-  [session capture](https://youtu.be/VxhZN52vEUU) (link to video instructions)
    1. locate `d.db.session.capture-mubu-buffer-v2.0.maxpat` in the top level of the `edis-performer-study` folder and open patch
    1. verify you are sending data to the right port number (it is different than `instrument definer`)
    1. check data monitor to verify session capture is receiving data
    1. choose the folder where you will save files from `session capture`
    1. enter session name - use your name with modifiers if desired
    1. choose the instrument name you created from the dropdown menu
    1. choose audio input or output of max 
        1. by default this is set to audio output with the left/right channels chosen
        1. make sure you are sending audio to max if necessary. 
        1. (gif below) if you are sending audio to max you will need to choose input and select the left and right (and deselect left and right for output - just to be sure)
            <br/>
            <img src="../assets/edis-audioInput.gif" alt="drawing" width="70%" />
            <br/>
            <br/>

    1. test by starting session capture - perform for a few seconds/minutes and then stop
    1. save -- verify that an audio (aif) and json file have been saved in your folder choice
    1. verify the data has been captured by opening the mubu data viewer
        1. double click on the `p mubu-view` object
        1. click  `open data viewer`
        1. verify the data is there. It might take a second to open 
    1. ***`IMPORTANT`*** do not have the data viewer open while recording with `session capture` it will significantly slow down the rate of data capture. Only open the data viewer after you have recorded and close before recording again.
        <br/>
        <img src="../assets/edis-closeDataViewer.gif" alt="drawing" width="70%" />
        <br/>
        <br/>


</details>

## 2.0 INSTRUCTIONS: VIDEO DOCUMENTATION

<details open >
<summary>click to collapse/expand section</summary>

<br/>

1. screen capture (with audio for sync purposes)

- `NOTE`: if you alread have a process for recording your screen (with audio) than use that which is familiar. Below are examples for those for whom this may be unfamiliar. 
- for mac: QuickTime

    <br/>
    <img src="../assets/edis-quicktime.gif" alt="drawing" width="70%" />
    <br/>
    <br/>

- for PC and mac: [OBS](https://obsproject.com/download) (link to software)
    - [video instructions for OBS](https://youtu.be/yoX58uoIbQU) (link to video)
        1. open OBS
        1. remove any items in the sources window
        1. click + button in sources - choose display capture
        1. if you notice that the it is only capturing a portion of your screen (top left) option-click/right-click/etc the window and select `resize output` and this will update to the full screen
        1. click + button - `audio output capture` and select the appropriate output (for me it is blackhole)
        1. may want to capture input (microphone for syncing) - click + button and select `audio input capture` (for the clap)
        1. test audio - send audio (from max or relevant software) - see signals
        1. press start recording (bottom right) - perform (or test)
        1. stop recording
        1. `importatant` go to settings (bottom right) --> output. Make sure the recording output as .mkv (extra protection if something occurs). Go to advanced settings and choose `automatically remux to mp4`
        1. settings --> output will show you the file path of where the video file is saved. 
<!-- <center><img src="assets/screenCapture.png" alt="drawing" width="70%" /></center> -->
- `NOTE:` it is a known issue that depending on your setup, the interfaces you use, the CPU of your computer, etc. that adding screen capture may inhibit the ability to perform your system and/or capture data. If this is the case, if it is possible to set up two phones/tablets/camaras, one capturing your screen, the other your relevant movements, than please attempt that option. If there is only one video camara available, if it is possible to capture your movements and screen, then attempt that option. If neither of these are possible, do not screen capture. Simply take a screen shot (image) of your screen based setup and just do the video recording. 
2. video recording from an angle that gets your interaction contact points: for me it is my hands and head/mouth
    <center><img src="../assets/videoPosition.png" alt="drawing" width="70%" /></center>
<!-- // ![alt text](https://github.com/dispersionlab/edis-performer-study/blob/main/assets/videoPosition.png) -->

3. once you have started both screen capture and video recording if you could clap your hands such that we have a sync point for the audio-video
    1. `NOTE`: If you are using headphones (vs speakers) for your system output (as I do) have the video recorder's audio record the room and the screen capture record the output of your system - and using a microphone that is output through your system - then clap such as to have the sync point. This can be easily setup in OBS (see video above)

</details>

## 3.0 QUESTIONNAIRE LINK
- please fill out [EDIS:performer-perspectives questionnare](https://docs.google.com/forms/d/e/1FAIpQLScneAqfCojfFYqSxHCCaCvpgi8sH7hSNNKe-HH4yK4Xe7Q1Gg/viewform) (link)
## 4.0 NOTES ON DOCUMENTING 20-30 min PERFORMANCE SESSION
1. start your audio-video/screen capture for documentation
1. setup, test, and start the session capture module ensuring data and audio are being sent to max. 
1. perform for 20-30 minutes (no longer than an hour as session capture will stop recording)
1. the approach to the performance is up to you – an improvisation, performing a composed piece, a rehearsal, study, etc.  
## 5.0 INSTRUCTIONS FOR GUIDED REFLECTION

1. After you have recorded your performance session, take about 5-10 mins to reflect on your performance (using the audio/video documentation) and select 1-3 sections, approximately 30secs - a few minutes in length, noting start and end times and briefly describe why you chose this/these section(s).
    - For each, briefly describe how your actions reflect in the moment intentions at the level of interaction. Most likely this will relate to what your system does and how you control/guide/interact with it.
1. In general - comment on what worked and didn’t work in terms of what you were attempting to do?
1. please mention any other comments/thoughts that come to mind. 
1. the guided reflection can be documented as a text, audio, or video file, whatever is most comfortable for you. 
1. the guided reflection will provide a starting point for the semi-structured interview

## 6.0 SUBMITTING YOUR FILES
1. put all of your files into a single folder: 
    1. session capture JSON and AIF files
    1. the video file(s) from the performance session documentation
    1. guided reflection text, audio, or video file. 
    1. and your instrumentDefinitions.json file. Located in: 
        - `edis-performer-study/dev/instrumentDefiner/instrumentDefinitions.json`
1. compress the folder and rename the new compressed file with your name
1. The limit for the (compressed folder) file that you can send is 100 GB. Mostly like you will be in the 2.3 - 5 GB depending on the length of your performance session. 
4. [link to file request to send your compressed file to my dropbox (private)](https://www.dropbox.com/request/2bVKcjXAZqI9Ya2r8cR9)
## 7.0 SETTING UP AN INTERVIEW
- once you have submitted your files, I will email you to set up a date/time for the interview. 