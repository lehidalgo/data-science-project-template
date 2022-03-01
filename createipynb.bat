@echo off

REM PYTHON NOTEBOOK DEFINITION
(
echo {
echo  "cells": [
echo   {
echo    "cell_type": "markdown",
echo    "id": "a0b1d5d0",
echo    "metadata": {},
echo    "source": [
echo     "# Project Template \n",
echo     "### by Leandro Hidalgo"
echo    ]
echo   },
echo   {
echo    "cell_type": "code",
echo    "execution_count": null,
echo    "id": "a9ca5b78",
echo    "metadata": {},
echo    "outputs": [],
echo    "source": [
echo     "# Code here"
echo    ]
echo   }
echo  ],
echo  "metadata": {
echo   "kernelspec": {
echo    "display_name": "Python 3 (ipykernel)",
echo    "language": "python",
echo    "name": "python3"
echo   },
echo   "language_info": {
echo    "codemirror_mode": {
echo     "name": "ipython",
echo     "version": 3
echo    },
echo    "file_extension": ".py",
echo    "mimetype": "text/x-python",
echo    "name": "python",
echo    "nbconvert_exporter": "python",
echo    "pygments_lexer": "ipython3",
echo    "version": "3.9.9"
echo   }
echo  },
echo  "nbformat": 4,
echo  "nbformat_minor": 5
echo }
) >%C:\PROJECTS\%1\notebooks\%1.ipynb%