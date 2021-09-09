# Install vimplug
## vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
## neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Copy tex snippets
## vim
cp -r UltiSnips $HOME/.vim/UltiSnips

# add to .vimrc
cat vimrc | cat - > $HOME/.vimrc

# add to init.vim
cat init.vim | cat - > $HOME/.config/nvim/.

## Conda environment setup
conda create -n notes
conda activate notes

conda config --env --add channels conda-forge
conda config --env --set pip_interop_enabled True

conda install pip --yes

## Inkscape shortcut and figure manager
sudo apt install pdf2svg xclip rofi
pip3 install pdflatex xlib inkscape-figures
