@echo off
REM Bowlna Deploy Script
REM Syncs Claude-designed files to local git repo and pushes to GitHub → Netlify

set SOURCE=C:\Users\Amar\OneDrive\Documents\Claude\Projects\Bowlna
set TARGET=C:\Users\Amar\Downloads\claude design\Bowlna---final---website

echo Copying files to local repo...
xcopy /E /I /Y /EXCLUDE:%SOURCE%\deploy-exclude.txt "%SOURCE%\*" "%TARGET%\"

echo.
echo Pushing to GitHub...
cd /d "%TARGET%"
git add .
git commit -m "Update site"
git push

echo.
echo Done! Netlify is deploying your site now (takes ~30 seconds).
pause
