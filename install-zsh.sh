# Fuente
# http://blog.byteb.us/oh-my-zsh-debian-tutorial/

# Update
sudo apt-get update

# Install dependencies. 
sudo apt-get install autoconf build-essential ncurses-dev

# Install last zsh version from http://zsh.sourceforge.net/Arc/source.html
wget -q -O - http://sourceforge.net/projects/zsh/files/zsh/5.2/zsh-5.2.tar.gz/download | tar xvzf -

cd zsh-5.2/

./Util/preconfig

./configure

make

sudo make install

# Add Zsh to the list of shells in /etc/shells. 
which zsh | tee -a /etc/shells

# Set Zsh as the default shell for the current user. 
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
