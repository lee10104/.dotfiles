alias ocaml='ledit ocaml'
export PATH="$PATH:/usr/local/opam/system/bin"
export TERM="xterm-256color"

function cd
{
  builtin cd "$@" && ls -F
}
