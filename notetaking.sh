# Set up conda environemtn
conda create -n notetaking
conda activate notetaking

conda config --env --append channels conda-forge
conda config --env --set pip_interop_enabled True

conda install libffi setuptools six sqlite tk tzdata zlib python-xlib ncurses
