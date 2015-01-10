# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' expand prefix
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=2
zstyle ':completion:*' prompt 'Completion Menu (%e errors)'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jack/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install

setopt completealiases HIST_IGNORE_DUPS

PATH=$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH

PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

autoload -U promptinit && promptinit
autoload -U colors && colors

PROMPT="%{$fg_bold[cyan]%}%n%{$fg_bold[yellow]%} %~ %b%{$fg[white]%}$ "
RPROMPT="[%{$fg[green]%}%W %{$fg[magenta]%}@%{$fg[green]%} %@%{$reset_color%}]"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load extra .zsh files
for file in $HOME/dotfiles/zsh/addons/*.zsh; do
  source $file
done
