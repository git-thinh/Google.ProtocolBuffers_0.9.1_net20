@echo off
SET BUILD_TARGET=%1
SET BUILD_CONFIG=%2

IF "%BUILD_TARGET%"=="" SET BUILD_TARGET=Rebuild
IF "%BUILD_CONFIG%"=="" SET BUILD_CONFIG=Debug

CMD.exe /Q /C "CD %~dp0 && %WINDIR%\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe build.csproj %3 %4 %5 %6 /t:%BUILD_TARGET% /p:BuildConfiguration=%BUILD_CONFIG% /p:Platform="Any CPU" /p:BuildTools=4.0 /toolsversion:4.0"

pause