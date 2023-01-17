#0 = Black       8 = Gray
#1 = Blue        9 = Light Blue
#2 = Green       A = Light Green
#3 = Aqua        B = Light Aqua
#4 = Red         C = Light Red
#5 = Purple      D = Light Purple
#6 = Yellow      E = Light Yellow
#7 = White       F = Bright White

@echo off
cls
color 0A
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")

:menu
echo.
call :PainText 0A "Select how many time you'd like to shutdown your pc"
echo. &
<nul set /p=""

call :PainText 03 "[30] "
call :PainText 07 " 30 minutes"
echo. &

call :PainText 0D "[1] "
call :PainText 07 " 1 hour"
echo. &

call :PainText 0D "[2] "
call :PainText 07 " 2 hours"
echo. &

call :PainText 0D "[3] "
call :PainText 07 " 3 hours"
echo. &

call :PainText 0D "[4] "
call :PainText 07 " 4 hours"
echo. &

call :PainText 0D "[5] "
call :PainText 07 " 5 hours"
echo. &

call :PainText 0D "[6] "
call :PainText 07 " 6 hours"
echo. &

call :PainText 0D "[7] "
call :PainText 07 " 7 hours"
echo. &

call :PainText 0D "[8] "
call :PainText 07 " 8 hours"
echo. &

call :PainText 0D "[9] "
call :PainText 07 " 9 hours"
echo. &

call :PainText 0D "[10] "
call :PainText 07 " 10 hours"
echo. &

call :PainText 08 "--------------------"
echo. &

call :PainText 60 "[d] DEACTIVATE Timer"
echo. &

echo. & :: break line

call :PainText 47 "[0] EXIT"
echo. &

call :PainText 08 "--------------------"
echo. &

set /p choice=Enter your choice: 

:: Options
if %choice% == 30 (
  goto :opt30
) else if %choice% == 1 (
  goto :opt1
) else if %choice% == 2 (
  goto :opt2
) else if %choice% == 3 (
  goto :opt3
) else if %choice% == 4 (
  goto :opt4
) else if %choice% == 5 (
  goto :opt5
) else if %choice% == 6 (
  goto :opt6
) else if %choice% == 7 (
  goto :opt7
) else if %choice% == 8 (
  goto :opt8
) else if %choice% == 9 (
  goto :opt9
) else if %choice% == 10 (
  goto :opt10
) else if /i %choice% == d (
  goto :optd
) else if %choice% == 0 (
	goto :opt0
) else {
  goto :invalid
}

:: -------------------------------- Functions
:opt30
  cls
  shutdown -s -t 1800
	echo. &
	call :PainText 09 "----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 30 minutes"
  echo. &
  call :PainText 09 "----------------------------------"
	echo. &
	goto menu

:opt1
  cls
  shutdown -s -t 3600
	echo. &
	call :PainText 09 "----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 1 hour"
  echo. &
  call :PainText 09 "----------------------------------"
	echo. &
	goto menu

:opt2
  cls
  shutdown -s -t 7200
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 2 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt3
  cls
  shutdown -s -t 10800
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 3 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt4
  cls
  shutdown -s -t 14400
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 4 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt5
  cls
  shutdown -s -t 18000
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 5 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt6
  cls
  shutdown -s -t 21600
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 6 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt7
  cls
  shutdown -s -t 25200
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 7 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt8
  cls
  shutdown -s -t 28800
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 8 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt9
  cls
  shutdown -s -t 32400
	echo. &
	call :PainText 09 "-----------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 9 hours"
  echo. &
  call :PainText 09 "-----------------------------------"
	echo. &
	goto menu

:opt10
  cls
  shutdown -s -t 36000
	echo. &
	call :PainText 09 "------------------------------------"
  echo. &
  call :PainText 09 " You choose to shutdown in"
  call :PainText 06 " 10 hours"
  echo. &
  call :PainText 09 "------------------------------------"
	echo. &
	goto menu

:optd
  shutdown /a
	cls
	echo. &
  call :PainText 0A "--------------------------------"
  echo. &
	call :PainText 0A " Successfully"
	call :PainText 06 " deactivated timer "
  echo. &
  call :PainText 0A "--------------------------------"
	echo. &
	goto menu

:opt0
  cls
  call :PainText 04 "---------"
  echo. &
  call :PainText 04 " Exiting "
  echo. &
  call :PainText 04 "---------"
	echo. &
	echo. &
	pause
	exit

:invalid
  cls
  echo. &
  call :PainText 04 "---------------------------------------"
  echo. &
  call :PainText 04 " This is not a valid option, try again "
  echo. &
  call :PainText 04 "---------------------------------------"
	echo. &
  goto menu

:: end
:PainText
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof

:end