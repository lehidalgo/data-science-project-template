@echo off

REM GITIGNORE DEFINITION
(
echo # Byte-compiled / optimized / DLL files
echo __pycache__/
echo *.py[cod]
echo *$py.class
echo #
echo # C extensions
echo *.so
echo #
echo # Distribution / packaging
echo .Python
echo build/
echo develop-eggs/
echo dist/
echo downloads/
echo eggs/
echo .eggs/
echo lib/
echo lib64/
echo parts/
echo sdist/
echo var/
echo wheels/
echo *.egg-info/
echo .installed.cfg
echo *.egg
echo MANIFEST
echo #
echo # PyInstaller
echo #  Usually these files are written by a python script from a template
echo #  before PyInstaller builds the exe, so as to inject date/other infos into it.
echo *.manifest
echo *.spec
echo #
echo # Installer logs
echo pip-log.txt
echo pip-delete-this-directory.txt
echo #
echo # Unit test / coverage reports
echo htmlcov/
echo .tox/
echo .coverage
echo .coverage.*
echo .cache
echo nosetests.xml
echo coverage.xml
echo *.cover
echo .hypothesis/
echo .pytest_cache/
echo #
echo # Translations
echo *.mo
echo *.pot
echo #
echo # Django stuff:
echo *.log
echo local_settings.py
echo db.sqlite3
echo #
echo # Flask stuff:
echo instance/
echo .webassets-cache
echo #
echo # Scrapy stuff:
echo .scrapy
echo #
echo # Sphinx documentation
echo docs/_build/
echo #
echo # PyBuilder
echo target/
echo #
echo # Jupyter Notebook
echo .ipynb_checkpoints
echo #
echo # pyenv
echo .python-version
echo #
echo # celery beat schedule file
echo celerybeat-schedule
echo #
echo # SageMath parsed files
echo *.sage.py
echo #
echo # Environments
echo .env
echo .venv
echo env/
echo venv/
echo ENV/
echo env.bak/
echo venv.bak/
echo #
echo # Spyder project settings
echo .spyderproject
echo .spyproject
echo #
echo # Rope project settings
echo .ropeproject
echo #
echo # mkdocs documentation
echo /site
echo #
echo # mypy
echo .mypy_cache/
echo #
echo #Folders
echo Output/
) >%C:\PROJECTS\%1\.gitignore%