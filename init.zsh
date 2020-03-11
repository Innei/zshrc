#!/bin/bash
FILEPATH=$(cd "$(dirname "$0")"; pwd)
ANTIGEN="$HOME/.local/bin/antigen.zsh"

cp "$FILEPATH/mac.zshrc" "$HOME/.zshrc"
# echo "$FILEPATH/mac.zshrc"
if [ ! -f "$ANTIGEN" ]; then
	[ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
	[ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
	[ ! -f "$HOME/.z" ] && touch "$HOME/.z"
	cp "$FILEPATH/antigen.zsh" "$ANTIGEN"
fi

source "$ANTIGEN"

# Initialize oh-my-zsh
antigen use oh-my-zsh

# default bundles
# visit https://github.com/unixorn/awesome-zsh-plugins
antigen bundle pip
antigen bundle svn-fast-info

antigen bundle colorize
antigen bundle github
antigen bundle python
antigen bundle rupa/z z.sh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle willghatch/zsh-cdr

cp "$FILEPATH/theme/xxf.zsh-theme" "$HOME/.antigen/bundles/robbyrussell/oh-my-zsh/themes"

antigen apply
chsh -s "$(which zsh)"
zsh