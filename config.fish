# Path Setting
set -x PATH /usr/local/sbin $PATH
set -x PATH /usr/local/bin $PATH
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x PATH $HOME/.pyenv/bin $PATH
set -x FURO_LOGS_REPOSITORY nagato:studio-c3-develop/nagato-ansible-logs.git

# pyenv
. (pyenv init - | psub)

# Alias
alias gst 'git status'

function cd
  builtin cd $argv
  la
end

function gip
  curl ipecho.net/plain; echo
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
alias ssh-l 'ssh main.jp-172588d65c1b672e@ssh421.lolipop.jp -p 2222'
alias cdnagato 'cd ~/Dev/nagato/studio-c3-develop'

# nagato
function furo2-nagato-deploy-stg
  cd ~/Dev/nagato/studio-c3-develop/ansible-nagato
  furo2 exec ansible-playbook -i hosts/staging release.yml -K
end
function furo2-nagato-deploy-prod
  cd ~/Dev/nagato/studio-c3-develop/ansible-nagato
  furo2 exec ansible-playbook -i hosts/production release.yml -K
end

# key-bind
function fish_user_key_bindings
  bind \cr peco-ghq-repo
end
