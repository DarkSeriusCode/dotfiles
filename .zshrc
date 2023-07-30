# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="powerlevel10k/powerlevel10k"

# CASE_SENSITIVE="true"

DISABLE_AUTO_TITLE="true"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add to PATH cargo and rust
path+=('/home/darkserius/.cargo/bin')
path+=("$HOME/.ghcup/bin")
export PATH
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# My aliases
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
    cmake --build build --target $1
}

cmaker() {
    cmakem $1
    cd build
    ./$1
    cd ..
}

eval "$(starship init zsh)"

