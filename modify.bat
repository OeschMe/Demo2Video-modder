:: This file adds OeschMe/Demo2Video-oeschme modificatrions to your existing norton62/Demo2Video installation without modifying the settings
:: Run this file from your existing Demo2Video installation folder
@echo off
title Demo2Video modder by OeschMe
set workingdir=%~dp0
@for /f "delims=" %%a in ('Powershell -C date -format yyyyMMdd-HHmmss') do Set "currenttime=%%a"

:: Move old files out of the way to /bak_%currenttime%
echo ------------------------------------------ && echo Moving old files to /bak with timestamp && echo ------------------------------------------ && echo: && echo:
mkdir bak_%currenttime% && mkdir autorun
cd bak_%currenttime%
mkdir static && mkdir templates && cd ..

echo README.md && move ./README.md ./bak_%currenttime%/README.md
echo run.bat && move ./run.bat ./bak_%currenttime%/run.bat
echo demo_downloader.py && move ./demo_downloader.py ./bak_%currenttime%/demo_downloader.py
echo main.py && move ./main.py ./bak_%currenttime%/main.py
echo web_server.py && move ./web_server.py ./bak_%currenttime%/web_server.py
echo youtube_uploader.py && move ./youtube_uploader.py ./bak_%currenttime%/youtube_uploader.py
echo static/style.css && cd static && move ./style.css ../bak_%currenttime%/static/style.css
echo templates/index.html && cd ../templates && move ./index.html ../bak_%currenttime%/templates/index.html

:: Fetch the modded files
echo: && echo: &&echo ------------------------------------------ && echo Getting modified files.. && echo ------------------------------------------ && echo: && echo:

:: Root files
:: README
echo README.md && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/README.md', '%workingdir%/README.md')"
:: demo_downloader.py
echo demo_downloader.py && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/demo_downloader.py', '%workingdir%/demo_downloader.py')"
:: main.py
echo main.py && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/main.py', '%workingdir%/main.py')"
:: web_server.py
echo web_Server.py && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/web_server.py', '%workingdir%/web_server.py')"
:: youtube_uploader.py
echo youtube_uploader.py && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/youtube_uploader.py', '%workingdir%/youtube_uploader.py')"
:: run.bat
echo run.bat && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/run.bat', '%workingdir%/run.bat')"

:: Template (html)
:: index.html
echo template/index.html && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/templates/index.html', '%workingdir%/templates/index.html')"

:: Static (css)
:: style.css
echo static/style.css && powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/OeschMe/Demo2Video-oeschme/refs/heads/main/static/style.css', '%workingdir%/static/style.css')"

:: Show success message to user
echo: && echo: && echo ------------------------------------------ && echo Done! All modifications done succesfully! && echo ------------------------------------------ && echo: && echo:

pause