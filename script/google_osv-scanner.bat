@echo off

set google-osv-scanner-version=2.2.1
echo %google-osv-scanner-version%

::mkdir
mkdir ..\sbom\poc\

::module opForeignWorkers
"..\google_osv-scanner\v%google-osv-scanner-version%\osv-scanner_windows_amd64.exe" --sbom=..\app\build\reports\bom.json --format=table --output=..\sbom\poc\sbom_report.txt
