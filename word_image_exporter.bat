@echo on
cd %~dp1

mkdir temp
copy %~nx1 temp\%~n1.zip

cd temp
powershell expand-archive %~n1.zip
xcopy %~n1\word\media img /I
move img ../img

cd ../
rm -r temp