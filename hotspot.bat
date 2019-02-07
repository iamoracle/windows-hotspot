@echo off
title HOTSPOT by Oracle
color 02
cls
set /p action=Type ON or OFF and ENTER key:
IF %action%==ON goto ON
IF %action%==OFF goto OFF ELSE ECHO "unexpected value" pause exit
:ON
set /p hotspot_name=Hotspot name:
cls
set /p hotspot_pass=Hotspot pass:
cls
netsh wlan set hostednetwork mode=allow ssid=%hotspot_name% key=%hotspot_pass%
cls
netsh wlan start hostednetwork 
pause
exit
ELSE
:OFF
netsh wlan stop hostednetwork 
pause


