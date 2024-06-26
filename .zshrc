# Disabling zsh nomatch
unsetopt nomatch

# Use the command zprof to show loading metrics on Zsh startup
zmodload zsh/zprof

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Lazy loading is around 70x faster (874ms down to 12ms),
# however the first time you run nvm, npm, node or a global module
# you will get a slight delay while nvm loads first.
# You'll only get this delay once per session.
export NVM_LAZY_LOAD=true

# If you have lots of projects with an .nvmrc file you may find the auto use option helpful.
# If it's enabled, when you cd into a directory with an .nvmrc file, zsh-nvm will automatically
# load or install the required node version in .nvmrc.
# You can enable it by exporting the NVM_AUTO_USE environment variable and setting it to true.
# It must be set before zsh-nvm is loaded.
export NVM_AUTO_USE=true

# Export nvm completion settings for zsh-nvm plugin
export NVM_COMPLETION=true

# Disable some messages that nvm prints when it switches between versions with NVM_AUTO_USE
export NVM_SILENT=true

# Choose between one [code, code-insiders or codium]
# The following line will make the plugin to open VS Code Insiders
# Invalid entries will be ignored, no aliases will be added
VSCODE=code

# By default, you-should-use will display its reminder message before a command has executed.
# However, you can choose to display the mesasge after a command has executed by setting the
# value of YSU_MESSAGE_POSITION.
export YSU_MESSAGE_POSITION="after"

# Plugin autoupdate
# Values accepted (min: 1, max: 16)
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  docker
  zsh-tab-title
  history
  git
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
  vscode
  zsh-nvm
  zsh-better-npm-completion
  zsh-you-should-use
#  autoupdate
)

ZSH_AUTOSUGGEST_STRATEGY=(completion history)

autoload -Uz compinit && compinit

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias subl='/mnt/c/Program\ Files/Sublime\ Text/subl.exe'
alias cls='clear'
alias up='sudo apt update && sudo apt upgrade -y && omz update'
alias clean='sudo apt autoremove -y && sudo apt autoclean'
alias phps='sudo update-alternatives --config php'

# User configuration

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/home/gentslava/yandex-cloud/path.bash.inc' ]; then source '/home/gentslava/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/home/gentslava/yandex-cloud/completion.zsh.inc' ]; then source '/home/gentslava/yandex-cloud/completion.zsh.inc'; fi

# bun completions
[ -s "/home/gentslava/.bun/_bun" ] && source "/home/gentslava/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
