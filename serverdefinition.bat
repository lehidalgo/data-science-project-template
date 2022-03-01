@echo off

REM %1 -- root
REM %2 -- envpath
REM %3 -- pName

REM LAUNCH SERVER DEFINITION
(
echo @echo off

echo call %1\Scripts\activate.bat %2

echo cd C:\PROJECTS\%3

echo jupyter-notebook

echo pause
) >%C:\PROJECTS\%3\launchserver.bat%