export PATH="$PATH:/usr/local/opam/system/bin"
export TERM="xterm-256color"

function cd
{
  builtin cd "$@" && ls -F
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
