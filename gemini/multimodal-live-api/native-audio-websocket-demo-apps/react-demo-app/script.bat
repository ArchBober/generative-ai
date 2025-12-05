@echo offrem -------------------------------------------------
rem  Run the Python server, then start the npm script
rem -------------------------------------------------

:: 1️⃣  Open a new Command Prompt window and run the Python server
start "Python Server" cmd /k "python server.py"

:: 2️⃣  Give the Python process a moment to start (optional)
timeout /t 2 >nul

:: 3️⃣  Open a new PowerShell window and run the npm command
start "NPM Runner" powershell -NoExit -Command "npm run dev"