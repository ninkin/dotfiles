# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias tmux='tmux -2'
alias checkbot-whitespaces='python tools/checkbot/run_checkbot.py --commit HEAD --check CheckTrailingWhitespaces --repair-changed-lines'
alias checkbot='python tools/checkbot/run_checkbot.py --commit HEAD'
alias gll="git log --no-merges --pretty=format:\"%h%x09%<(20)%an%s\""

# Change according to your environment
SRC_DIR="/home/i332179/b01"
BIN_DIR="$SRC_DIR/build/Optimized/gen"
INST_DIR="/usr/sap/BO1/HDB01"
HOSTNAME="selibm133"
 
uniquify() { echo "$1" | awk -v RS=':' -v ORS=":" '!a[$1]++ { if (NR > 1) printf ORS; printf $a[$1] }'; }
export DIR_INSTANCE="$INST_DIR"
export SAP_RETRIEVAL_PATH="$DIR_INSTANCE/$HOSTNAME"
export DIR_EXECUTABLE="$DIR_INSTANCE/exe"
export SECUDIR="$SAP_RETRIEVAL_PATH/sec"
export PYTHONPATH=$(uniquify "$BIN_DIR:$BIN_DIR/python_support:$SRC_DIR/python-api/python:$SRC_DIR/nutest/lib:$SRC_DIR/Interfaces/PythonDBAPI:$PYTHONPATH")
export LD_LIBRARY_PATH=$(uniquify "$BIN_DIR:$BIN_DIR/test/gmock/:$LD_LIBRARY_PATH")

# happy make (installed on 2017-02-27 17:58:57.424559)
source /home/i332179/.HappyMake/etc/hminit.sh
export PATH="/home/i332179/.linuxbrew/bin:$PATH"
export MANPATH="/home/i332179/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/i332179/.linuxbrew/share/info:$INFOPATH"

