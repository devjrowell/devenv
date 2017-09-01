
alias tmux='TERM=screen-256color-bce tmux -u attach || tmux -u new'
alias takeover='/usr/bin/tmux detach -a'

[ -s "/Applications/MacVim.app/Contents/MacOS/Vim" ] && alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
[ -s "/Applications/MacVim.app/Contents/MacOS/Vim" ] && alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

[ -s "/home/jrowell/.dnx/dnvm/dnvm.sh" ] && . "/home/jrowell/.dnx/dnvm/dnvm.sh" # Load dnvm
[ -s "/usr/local/lib/dnx/bin/dnvm.sh" ] && source "/usr/local/lib/dnx/bin/dnvm.sh" # Load dnvm

#alias web='python -m SimpleHTTPServer'
alias web='authbind --deep twistd -n web --path . --port 80'
alias phpweb='authbind --deep php --php-ini /etc/php.ini -S 0.0.0.0:80'

# dev stuff
export MONO_MANAGED_WATCHER=false
. ~/.devenv/zshrc.thorovetx
# end dev stuff

