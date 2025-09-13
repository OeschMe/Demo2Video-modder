:: This file adds OeschMe/Demo2Video-oeschme modificatrions to your existing norton62/Demo2Video installation without modifying the settings
:: Run this file from your existing Demo2Video installation folder


:: Move old files out of the way to /bak/
echo "Moving old files to /bak"
mkdir bak
move ./README.md ./bak/README.md
move ./demo_downloader.py ./bak/demo_downloader.py
move ./main.py ./bak/main.py
move ./web_server.py ./bak/web_server.py
move ./youtube_uploader.py ./bak/youtube_uploader.py
cd bak
mkdir static
mkdir templates
cd ..
cd static
move ./style.css ../bak/static/style.css
cd ../templates
move ./index.html ../bak/templates/index.html

:: Fetch the modded files
echo ""

::Root files


:: Template (html)


:: Static (css)


:: Add the autorun
mkdir autorun

:: Show success message to user