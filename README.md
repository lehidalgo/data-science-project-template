# Create Data Science Project Structure
This batch file create the following folder structure for a typical Data Science project.

---------------------------------------
- Project Folder
	- data
	- env
		- env_folder (It has the project name)
	- imgs
	- models
	- notebooks
		- project_name.ipynb
	- .gitignore
	- Dockerfile (In case you wnat to containerize you app)
	- lauchServer.bat (Open your jupyter environment. You only have to double-click and experiment)
	- main.py (Main Python script)
---------------------------------------

1. [Anaconda](https://www.anaconda.com/products/individual) must be installed.
2. If you want to use your GPU with Tensorflow, locally, make sure you check these steps:
	**System Preparation - NVIDIA Driver Update and checking your PATH variable:**
	  - [x] Check your NVIDIA Driver
	  - [x] Check your PATH environment variable. See this [guide](https://www.tensorflow.org/install/gpu#pip_package).
	  - [x] BE SURE you follow this [guide](https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-windows). 

## How to use it

1.  Create a `yml` file to add the required python packages for your project. Add `Tensorflow`, `Keras` or `Pytorch` depending on the framework of your preference.

2. 	Open command promt and write
`createProjTemplate.bat anaconda_path github_url yml_file`


> **anaconda_path** 
> 
> Typically has this form: `C:\Users\*user*\anaconda3`

> **github_url**
> 
> `https://github.com/*username*/*repo_name*`
> 
> Github url of your already created repo.

> **yml_file**
>
>envsettings-tensorflow.yml
>
> yml file with the description and requirements of your Anaconda environment.

