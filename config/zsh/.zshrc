# Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt redhat

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PATH="$HOME/.local/bin:$PATH"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
export PYTHONSTARTUP="/home/spikeyamk/.config/python/pythonrc.py"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
