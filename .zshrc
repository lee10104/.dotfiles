source ~/.zgen/zgen/zgen.zsh
if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh
  zgen oh-my-zsh plugins/cp
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/mosh
  zgen oh-my-zsh plugins/command-not-found
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load simnalamburt/shellder shellder
  zgen save
fi


#
# Basic configs
#
export DEFAULT_USER="$USER"

if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi

if [ "$TMUX" = "" ]; then
  export TERM="xterm-256color"
fi

function cd() {
  builtin cd $@ &&
  ls -a
}

alias mv='mv -i'
alias cp='cp -i'
alias irc='tmux attach -t irc'
alias hw='tmux attach -t homework'

PATH=~/.opam/4.02.1/bin:$PATH
