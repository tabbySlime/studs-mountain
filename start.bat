:: Important stuff
@echo off && cls
title studs-mountain

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start studs-mountain ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo studs-mountain is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo studs-mountain is now starting...
echo Please navigate to http://localhost on your browser.
npm start
