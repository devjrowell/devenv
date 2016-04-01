
alias tmux='TERM=screen-256color-bce tmux -u'
#alias vi='/Applications/MacVim.app/Contents/MacOS/Vim -c Minimap'
#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim -c Minimap'
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

[ -s "/home/jrowell/.dnx/dnvm/dnvm.sh" ] && . "/home/jrowell/.dnx/dnvm/dnvm.sh" # Load dnvm
[ -s "/usr/local/lib/dnx/bin/dnvm.sh" ] && source "/usr/local/lib/dnx/bin/dnvm.sh" # Load dnvm

alias web='python -m SimpleHTTPServer'

# dev stuff
alias psql=/opt/local/bin/psql
export MONO_MANAGED_WATCHER=false
. ~/.devenv/zshrc.thorovetx
# end dev stuff

