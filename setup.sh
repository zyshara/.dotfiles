###########################################
# Setup script for zyarash Linux boxes :) #
###########################################

# Install vim and zsh
sudo apt-get install vim zsh dconf-cli tmux gconf2 curl

# chsh to zshell
sudo chsh -s $(which zsh)

# Symlinks
files=(".vimrc" ".zshrc" ".tmux.conf" ".zlogin" ".zpreztorc")
for file in "${files[@]}"
do
    ln -s -f ~/Documents/.dotfiles/$file ~/$file
done

# Make vim directories
mkdir ~/.vim/.swap ~/.vim/.backup ~/.vim/.undo

# Download zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.prezto"

# Download pathogen
mkdir ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Download vim solarized theme
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

# Download gnome term solarized theme
# NOTE: Replace UUID with "dconf list /org/gnome/terminal/legacy/profiles:/", will figure out how to automatically splice this l8r
# git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git ~/Downloads/gnome-terminal-colors-solarized
# . ~/Downloads/gnome-terminal-colors-solarized/install.sh --profile=b1dcc9dd-5262-4d8d-a863-c897e6d979b9 --scheme=dark --install-dircolors

# Reboot
# sudo reboot now
