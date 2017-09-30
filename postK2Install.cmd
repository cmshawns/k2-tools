REM @echo off

echo Switching service to manual...

:: Stop K2 Service and set to Manual start
set K2SERVER=K2 Server

sc stop "%K2SERVER%"
sc config "%K2SERVER%" start= Demand

echo Creating shortcut for SmartObject Service Tester...

:: Add SmartObject Tester shortcut to taskbar
::		Taken from http://superuser.com/a/455383
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
set K2DIR=%ProgramFiles%\K2

echo Set oWS = WScript.CreateObject("WScript.Shell") > %SCRIPT%
echo sLinkFile = "%APPDATA%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\SmartObject Service Tester.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%K2DIR%\Bin\SmartObject Service Tester.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%

echo Creating favorite in Explorer for K2 blackpearl folder...

:: Add K2 install directory to Explorer favorites
echo Set oWS = WScript.CreateObject("WScript.Shell") > %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Links\K2 blackpearl.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%K2DIR%" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

echo Please log off and back on to update shortcuts in the taskbar.
pause
