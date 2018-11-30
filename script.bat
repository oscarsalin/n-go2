@echo off
setlocal EnableDelayedExpansion

set filstig=%1
cls

if exist %filstig%\ (
	for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do (
		if "%%b" =="tiedosto(a)" (
			set filer=%%a
			set storlek=%%c 
			)
		if "%%b" =="kansio(ta)" (
			set kataloger=%%a 
			)
	)
	echo filer !filer!, storlek !storlek!, kataloger !kataloger!
) else (
if exist %filstig% (
for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do (
		if "%%b" =="tiedosto(a)" (
			set fil_storlek=%%c 
		)
	) 
echo !filstig! ar en fil, storlek !fil_storlek!
) else echo !filstig! existerar inte )
