alias c="clear"
alias ls='ls --color=auto'
alias l='ls -la'
alias gca='git commit --amend --no-edit'
alias gl='git log --oneline --all --graph --decorate  $*'
alias nu='sudo nala update && sudo nala upgrade'
alias dotenv='set -a; source .env; set +a'

#export EDITOR="nvim"
export SHELL="zsh"

export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/usr/local/sbin:/usr/local/go/bin"

docker_rm_stopped() {
    docker rm $(docker ps -a -q)
}

if ! type open >/dev/null ; then
    alias open=xdg-open
fi

# Start the gpg-agent if not already running
if ! pgrep -x "gpg-agent" -u "${USER}" > /dev/null; then
    gpg-connect-agent /bye >/dev/null 2 >&1
fi

alias gpg-unlock="gpg-connect-agent updatestartuptty /bye"
