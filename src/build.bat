@echo off
set ZIP=C:\PROGRA~1\7-Zip\7z.exe a -tzip -y -r
set REPO=advanced_browser
set NAME=Advanced Browser for CCBC
set PACKID=advanced_browser
set VERSION=2.6.1


quick_manifest.exe "%NAME%" "%PACKID%" >%REPO%\manifest.json
echo %VERSION% >%REPO%\VERSION

fsum -r -jm -md5 -d%REPO% * > checksum.md5
move checksum.md5 %REPO%\checksum.md5

REM %ZIP% %REPO%_v%VERSION%_Anki20.zip *.py %REPO%\*
cd %REPO%
REM %ZIP% ../%REPO%_v%VERSION%_Anki21.ankiaddon *
%ZIP% ../%REPO%_v%VERSION%_CCBC.adze *
