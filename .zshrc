# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# CASE_SENSITIVE="true"

DISABLE_AUTO_TITLE="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Add to PATH cargo and rust
path+=('/home/darkserius/.cargo/bin')
path+=("$HOME/.ghcup/bin")
path+=("$HOME/.bin")
export PATH
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# gtc - go to ~/Code dir
gtc() {
    cd ~/Code/$1
}

# gtp - go to project in ~/Code/projects
gtp() {
    cd ~/Code/projects/$1
}

cmakeb() {
    cmake -B build $1
}

cmakem() {
    cmake --build build
}

cmaker() {
    cmakem $1
    cd build
    ./$1
    cd ..
}

eval "$(starship init zsh)"
