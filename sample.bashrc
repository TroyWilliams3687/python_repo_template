
# Here is a sample of what could be added to the .bashrc file to make sure you have the `python`
# environment variable set to drive the makefile.

# --------------
# Custom Python Installations

# We'll use aliases instead of setting the path to these things - it means we
# cannot do `$ python` at the terminal but that isn't a bad thing

# installed Python paths - the paths to the bin folder
python_39="~/opt/python_3.9.5/bin"
python_391="~/opt/python_3.9.1/bin"
python_38="~/opt/python_3.8.6/bin"

# Configure some environment variables to use in scripts and makefiles to keep things
# more generic.

export python=${python_39}      # Most scripts should reference this one
export python39=${python_39}    # Some modules may only work with this version
export python38=${python_38}    # Some may only work with this version (pyvista)

# Configure the python3 alias so we are using the correct version and it will run at the terminal
# NOTE: I am using python3 so I don't mistake it with the system python (if installed)

alias python3="$python_39/python3.9"
alias pip3="$python_39/pip3.9"
alias virtualenv="$python_39/virtualenv"
