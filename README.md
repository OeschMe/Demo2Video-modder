# Demo2Video-modder
Automatic mod merge for the Demo2Video project

Modder script will take timestamped backups of the files and fetch the modded/new files automatically.

<sup><sub>Script still misses error handling, but it should work as is from proper D2V project folder.</sub></sup>

### This requires existing installation of Demo2Video!
### Options, if you don't have it installed
1. Easiest way
   * Install D2V using [Moon²s fork](https://github.com/m0onmo0n/Demo2Video-Installer) of auto installer
   * Use this modder to aplly forked edits

2. Direct way
   * Install modded D2V manually using [my fork](https://github.com/OeschMe/Demo2Video-oeschme)

3. Manual way (the hard way)
   * Install vanilla D2V manually using [Nortons repo](https://github.com/norton62/Demo2Video)
   * Use this modder to aplly forked edits


## How to use?
### Manual method
Manually download the `modify.bat` from file page to your Demo2Video project folder and run it

### git clone
Clone this repository with `git clone https://github.com/OeschMe/Demo2Video-modder` and move the `modify.bat` to your Demo2Video project folder and run it

## What's different?

### run.bat
* Resolves Node/NVM and Python for this window (no PATH drama).
* Starts the CSDM dev server and the CS Demo Processor.
* Launches OBS (if you saved its path on first run).
* Opens the web UI at http://localhost:5001.

### main.py
* Automatically fetch suspects name from CSWatch API and filter non-YouTube friendly characters out
* Add timestamp to each completed job
* Changed file naming scheme (including YouTube title naming)
* Added support for per job save method selection


### index.html
* Added "Demo expired" to response list
* Added batch process form
* Rearranged previous jobs list
  * Added timestamp and suspects name
  * Added "Copy YT link" button in the table row and "Show output" dialog
    * Also shows popup with the youtube URL when copy is succesfull
* Added per job save method radio buttons
  * This setting is saved as a cookike
* Added jQ cookie lib
<sub>* System has functionality for custom "Submitter name" renaming, but it's not fully implemented yet.</sub>


### style.css
* Made whole interface wider
* Adjusted table cells to fit timestamp
* Added styles for other added features

### webserver.py
* Made results list longer
* Fixed default save method getting overriden when getting job from URI (ie. CSWatch Get Highlights -link)

### youtube_uploader.py
* Removed description
* changed tag "cheater" to "suspect"

### demo_downloader.py
* Rearranged API endpoints for load balancing
* Fixed "Demo expired" detection
