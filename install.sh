## Vim
# Install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy tex snippets
cp UltiSnips $HOME/.vim/UltiSnips

# add to .vimrc
echo vimrc >> $HOME/.vimrc

## Conda environment setup
conda create -n notes
conda activate notes

conda config --env --add channels conda-forge
conda config --env --set pip_interop_enabled True

conda install pip --yes

## Inkscape shortcut and figure manager
sudo apt install pdf2svg xclip rofi
pip3 install pdflatex xlib inkscape-figures
