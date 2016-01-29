@ECHO OFF

echo K2 Fast Installer

if "/c"=="%1" goto create
if "/C"=="%1" goto create
goto install

:create
rem Drop the /c switch and create a setup settings file
shift
%1\Installation\Setup.exe /output:..\..\%computername%_%1.xml

:install
%1\Installation\Setup.exe /install:..\..\%computername%_%1.xml
