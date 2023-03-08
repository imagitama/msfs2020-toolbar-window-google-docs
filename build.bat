echo "Building using SDK..."

"%MSFS_SDK%\Tools\bin\fspackagetool.exe" "google-docs-panel\Build\google-docs-panel.xml" -nopause
copy /Y "google-docs-panel\Build\Packages\google-docs-panel\Build\google-docs-panel.spb" "google-docs-panel\InGamePanels"

echo "Dropping into Community packages folder..."

robocopy "google-docs-panel" "%APPDATA%\Microsoft Flight Simulator\Packages\Community\google-docs-panel" /E
rmdir /S /Q "%APPDATA%\Microsoft Flight Simulator\Packages\Community\google-docs-panel\Build"

echo "All done!"