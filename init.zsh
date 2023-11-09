sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~
cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/
git clone https://github.com/trystan2k/zsh-tab-title
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/gentslava/zsh-nvm.git
git clone https://github.com/gentslava/zsh-better-npm-completion.git
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git
git clone https://github.com/tamcore/autoupdate-oh-my-zsh-plugins.git autoupdate
source ~/.zshrc
