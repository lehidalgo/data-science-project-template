@echo off

REM ###### PROJECT TEMPLATE (directories + environment) ######
REM ###### ANACONDA ROOT ######
REM ###### THIS PATH MAY BE DIFFERENT IN YOUR SYSTEM ######

set root=%1
set gitUrl=%2
set ymlFile=%3     	

REM ### AFTER CONVERT . TO /, EVERY GITHUB SSH ADDRESS WILL HAVE 3 /. SO I USE ONLY TOKEN 3 ### 
REM ### SPLIT STRING BY DELIMITER / ### 
FOR /f "tokens=1,2,3,4 delims=/" %%a IN ("%gitUrl%") do (
	set gitUsername=%%c   
	set pName=%%d
)

set ymlfile=C:\PROJECTS\%ymlFile%

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
echo "#Requirement File">C:\PROJECTS\%pName%\requirements.txt
echo "#MainApp_v0">C:\PROJECTS\%pName%\main.py
echo "#DockerFile_v0">C:\PROJECTS\%pName%\Dockerfile
echo "#Readme_v0">C:\PROJECTS\%pName%\README.md

REM ACTIVATE ENV					
call %root%\Scripts\activate.bat %root%	
call conda env create -p %envpath% -f %ymlfile%
call %root%\Scripts\activate.bat %envpath%
python -m ipykernel install --user --name=%pName%

cd C:\PROJECTS\%pName%

REM ###### SETTING UP GITHUB AND UPLOADING THE FILE TO THE PROJECT REPO ######
REM Initialize the git
git init

REM Add all the files and folder
git add .

REM Commit the files
git commit -m "First commit"

REM Set the remote repo URL
git remote add origin %gitUrl%

REM Push to changes from local repo to github
git push origin master

REM If you want to work with web Jupyter Notebook environmen, uncomment line below.
REM jupyter-notebook

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
