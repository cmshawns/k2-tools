@echo off
:start
"%ProgramFiles%\K2\Host Server\Bin\K2HostServer.exe"
echo.
choice /C yn /M "Restart server? "
echo.
if errorlevel 2 goto end
if errorlevel 1 goto start
:end