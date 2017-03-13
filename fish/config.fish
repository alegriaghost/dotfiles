# Path Setting
set -x PATH /usr/local/sbin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/opt/php70/bin $PATH
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH

# Alias
alias semacs 'sudo emacs'
alias cf 'emacs ~/.config/fish/config.fish'
alias scf 'source ~/.config/fish/config.fish'
alias cdd 'cd ~/Dev'
alias gst 'git status'

function cd
  builtin cd $argv
  ll
end

# peco
function peco-ghq-repo -d "Search ghq repository path"
  commandline | read -l buffer
  ghq list -p | peco | read -l selected
  if [ $selected ]
    commandline $buffer$selected
  end
  commandline -f repaint
end

# studio-c3
alias cds 'cd ~/Dev/studio-c3'
alias ssh-l 'ssh main.jp-172588d65c1b672e@ssh421.lolipop.jp -p 2222'

# key-bind
function fish_user_key_bindings
  bind \cr peco-ghq-repo
end
