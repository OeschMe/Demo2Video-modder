# Demo2Video-modder
Automatic mod merge for the Demo2Video project
Script will take backups of the Vanilla files and fetch the modded files automatically.

# How to use?
## Manual method
Manually download the `modify.bat` from file page to your Demo2Video project folder and run it

## git clone
Clone this repository with `git clone https://github.com/OeschMe/Demo2Video-modder` and move the `modify.bat` to your Demo2Video project folder and run it

# What's different?

## main.py
* Automatically fetch suspects name from CSWatch API and filter non-YouTube friendly characters out
* Add timestamp to each completed job
* Changed file naming scheme (including YouTube title naming)
* Added support for per job save method processing


## index.html
* Added batch process form
* Rearranged previous jobs list
  * Added timestamp and suspects name
* Added per job save method radio buttons
  * This setting is saved as a cookike
* Added "Copy YT link" button in the table row and "Show output" dialog
  * Also shows popup with the youtube URL when copy is succesfull


* Added jQ cookie lib
* System has functionality for custom "Submitter name" renaming, but it's not fully implemented yet.


## style.css
* Made whole interface wider
* Adjusted table cells to fit timestamp
* Added styles for other added features

## webserver.py
* Made results list longer
* Fixed default save method getting overriden when getting job from URI (ie. CSWatch Get Highlights -link)

## youtube_uploader.py
* Removed description
* changed tag "cheater" to "suspect"

## demo_downloader.py
* Rearranged API endpoints for load balancing
