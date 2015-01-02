REM Kus' Counter-Strike: Global Offensive Script v0.4.1
REM ahttp://blakek.us
REM Twitter: @blakekus
REM Contribute on github: http://github.com/kus/csgo-buy-script
@ECHO OFF
CLS
COLOR A
TITLE Kus CS:GO Script
SET path=..\scripts\
SET mouse_keyboard_options=mouse_keyboard_options.txt
SET kus_mouse_keyboard_options=mouse_keyboard_options_KUS.txt
SET original_mouse_keyboard_options=mouse_keyboard_options_ORIGINAL.txt
IF NOT EXIST %path%%mouse_keyboard_options% (
	ECHO Error, can't find 'csgo\scripts\%mouse_keyboard_options%' did you extract this to the correct directory?
	GOTO END
)
IF NOT EXIST %path%%kus_mouse_keyboard_options% (
	ECHO Error, can't find 'csgo\scripts\%kus_mouse_keyboard_options%' did you put it in the correct directory?
	GOTO END
)
%WINDIR%\system32\findstr.exe /m "Kus" %path%%mouse_keyboard_options%
IF %errorlevel% == 0 (
	IF NOT EXIST %path%%original_mouse_keyboard_options% (
		ECHO Error, can't find 'csgo\scripts\%original_mouse_keyboard_options%', it should be created when you first run this script.
		GOTO END
	)
	COPY /b/v/y %path%%original_mouse_keyboard_options% %path%%mouse_keyboard_options%
	CLS
	ECHO Default control menu restored!
	ECHO You can play on servers with sv_pure 1 or above.
	ECHO If you want to change a binding later on, come back run this script change them then run it again.
) ELSE (
	REM Update _ORIGINAL with latest version incase there was an update
	COPY /b/v/y %path%%mouse_keyboard_options% %path%%original_mouse_keyboard_options%
	COPY /b/v/y %path%%kus_mouse_keyboard_options% %path%%mouse_keyboard_options%
	CLS
	ECHO Custom control menu set!
	ECHO Please go into CS:GO and set your controls.
	ECHO Once you have set your controls, exit CS:GO and run this script to restore the default %mouse_keyboard_options% so you can play on servers that have sv_pure 1 or above!
)
:END
pause
exit