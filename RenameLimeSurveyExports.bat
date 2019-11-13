@echo off
pushd "C:\Your\folder\here"
for %%a in (*.lss) do for /f "tokens=3*delims=[]" %%i in ('type "%%a" ^| find "</surveyls_title>"') do ren "%%~a" "%%~i%%~xa"
popd
