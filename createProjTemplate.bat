@echo off

REM ###### PROJECT TEMPLATE (directories + environment) ######
REM ###### ANACONDA ROOT ######
REM ###### THIS PATH MAY BE DIFFERENT IN YOUR SYSTEM ######

set root=%1
set pName=%2
set ymlfile=C:\PROJECTS\envsettings.yml         	

REM ###### PROJECT CREATE DIRECTORIES ###### 

md C:\PROJECTS\%pName%
md C:\PROJECTS\%pName%\env
md C:\PROJECTS\%pName%\data
md C:\PROJECTS\%pName%\models
md C:\PROJECTS\%pName%\notebooks
md C:\PROJECTS\%pName%\imgs

call createipynb.bat %pName%
call creategitignore.bat %pName%

REM ###### Create environment in a specific location and from yml file ######
set envpath=C:\PROJECTS\%pName%\env\%pName%

call serverdefinition.bat %root% %envpath% %pName%

REM CREATE OTHER PROJECT FILES
REM echo "#Requirement File">C:\PROJECTS\%pName%\requirements.txt
echo "#MainApp_v0">C:\PROJECTS\%pName%\main.py
echo "#DockerFile_v0">C:\PROJECTS\%pName%\Dockerfile
echo "#Readme_v0">C:\PROJECTS\%pName%\README.md

REM ACTIVATE ENV					
call %root%\Scripts\activate.bat %root%	
call conda env create -p %envpath% -f %ymlfile%
call %root%\Scripts\activate.bat %envpath%
python -m ipykernel install --user --name=%pName%

cd C:\PROJECTS\%pName%

jupyter-notebook

git init

pause

REM ############################################################################
REM ############################################################################

REM ###### Create environment from scratch (No requirement.txt file) ######
REM call conda create --name %envname%

REM ###### Delete environment ######
REM conda remove --name %envname% --all

REM ###### See all conda envs ######
REM call conda info --envs

REM ###### Export yml file to replicate environment ######
REM call conda env export > environment.yml

REM ############################################################################
REM ############################################################################

cmd /k