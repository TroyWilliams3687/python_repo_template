# Python Repository Template

## Introduction

This is a set of Makefiles that are used as a starting point to provide common features for python repositories. The goal is to make using a python based repo as simple as possible across different platforms. Normally constructing the virtual environment is a chore. This set of makefiles simplifies that process considerable, essentially making a reproducible environment on any O/S that supports `make` (in one form or another).

Simply copy the makefiles to your repository root and issue the terminal command (at the repo root):

```bash
$ make venv
```

That command will construct the virtual environment based on the particular python version you want. It will look for all `requirements.txt` files and install all modules automatically. If your python project is a package itself, it will automatically install it in the virtual environment.

To delete the virtual environment issue `make remove` and that will remove the `.venv` along with all python cache folders and other items that are not required.

## Usage

There are quite a few files in this repository. All of them can be used as a basis of a new Python project repository. Or you can cherry-pick the ones that are relevant.

### Basics - Repo and Package

- `.gitignore`
    - basic boilerplate for `.gitignore` cobbled together from other sources with some things removed. A good starting point.

- `dev-requirements.txt`
    - The requirements file template for development dependencies. The makefiles are setup to read any `*requirements.txt` at the root of the repo. This gives you the ability to organize the dependencies any way you see fit. The basics in this repo divides items your project needs (i.e. `requirements.txt`) from development dependencies like linters.
    - NOTE: This isn't required if you are not creating a package where the required modules can be different.

- `requirements.txt`
    - Same as the `dev-requirements.txt`, just for things your project/package needs.

- `pyproject.toml`
    - a basic template TOML file used in the package build process. This is only required if you project is a package or will be treated like a package. It is boilerplate and doesn't require any changes or modifications.
    - NOTE: This isn't required if you are not creating a package.

- `setup.py`
    - The `setup.py` is modified to work with `pyproject.toml`. As such, it is a boilerplate file that only requires to be in the root folder. Nothing in this file needs to be modified.
    - NOTE: This isn't required if you are not creating a package.

- `setup.cfg`
    - The new way to build python packages. The `setup.cfg` is an excellent template and can easily be adapted to various projects.
    - NOTE: This isn't required if you are not creating a package.

- `mf_support`
    - This is the folder that contain the support files used by the `Makefile`. It is designed to reduce the foot print at the root of repo folders.


>NOTE: For a basic project, only the `.gitignore` and `requirements.txt` files should be used.

### Make

The makefiles are the reason for this repository. They provide functionality in a common way across different python repositories. You can use a command like `make venv` will construct the virtual environment and install all the requirements. It means that `make test` will run pytest (if installed).

For more information, see [make.md](make.md) for details.


## License

[MIT](https://choosealicense.com/licenses/mit/)

