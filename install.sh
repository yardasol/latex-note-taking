#Install source codes
#github username
GITHUB_UNAME=yardasol
authors=("gillescastel" "gillescastel" "gillescastel" "gillescastel")
repos=("inkscape-shortcut-manager" "inkscape-figures" "latex-snippets" "university-setup")
branches=("master" "master" "master" "master")
indices=(0 1 2 3)

#Set up local git branches
for i in ${indices[*]}; do
  git clone git@github.com:$GITHUB_UNAME/${repos[$i]}
  cd ${repos[$i]}
  git remote add upstream git@github.com:${authors[$i]}/${repos[$i]}
  git fetch upstream
  git merge upstream/${branches[$i]}
  git push
  cd ../
done


#Install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create .vimrc


# Install vimtex, ultisnips, 

# Install meson and ninja
sudo apt install meson ninja-build

# Install girara
cd ~/util; git clone https://git.pwmt.org/pwmt/girara.git
cd girara
git checkout --track -b develop origin/develop
mkdir build
meson build
cd build
ninja
ninja install

# Install zathura
sudo apt install zathura --yes
# can also try building from source here

# install bspwm

sudo apt install xdotool
# Install the tex snippets
#this line isn't working for some reason :/
curl -fLo ~/.vim/UltiSnips/tex.snippets --create dirs \
  https://raw.githubusercontent.com/gillescastel/latex-snippets/master/tex.snippets

cd util

# Install pywal
git clone https://github.com/dylanaraps/pywal
cd pywal
pip3 install --user .

# Add local 'pip' to PATH:
# (In your .bashrc, .zshrc etc)
export PATH="${PATH}:${HOME}/.local/bin/"

wal --theme base16-nord

# Install inkscape figure manager scripts
sudo apt install rofi
sudo apt install inkscape
sudo apt install xclip
sudo apt install rxvt-unicode
pip3 install inkscape-figures
pip3 install pdflatex
pip3 install xlib
sudo apt install pdf2svg
 
