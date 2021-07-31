# -----------
# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Troy Williams

# uuid       =
# author     = Troy Williams
# email      = troy.williams@bluebill.net
# date       =
# -----------

# -----------
# Information

# This is the prototype for the main Makefile in Python code repositories. It
# will make use of the `Makefile.python` to deal with the majority of python
# functionality that the repos will require. It will also help to make the main
# Makefile clean and contain only specific things that are required for the
# individual repository.

# -----------
# Makefile.env

# Makefile.env - should not be included with your repo. There is a
# Makefile.env.sample that exists with the variables that these makefiles
# require. Please make of copy of that, rename it and update the variables. Also
# add it to the .gitignore file.

include Makefile.env

# -----------
# Optional Includes

include Makefile.python
include Makefile.python.build


# -----
# make clean

# Remove any created documents from the build process. This will probably be
# custom for every repo.

## make clean - Remove the build components
.PHONY: clean
clean:
	@echo "Cleaning PyPI build folder..."
	@rm -rf build
	@echo "Cleaning PyPI dist folder..."
	@rm -rf dist
	@echo "Cleaning Build Output..."
	@rm -rf output

# ------
# make remove

# Remove the Virtual Environment and clean the cached files. NOTE: For some
# repos, it might be prudent to add `clean` as a dependency.

## make remove - Remove the virtual environment and all cache files.
.PHONY: remove
remove: remove-venv
	@echo "Removing ${VENV} and Cached Files..."