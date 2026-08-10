if status is-interactive
    # Commands to run in interactive sessions can go here
end

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export EDITOR="vim"

set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

set fish_greeting "$(fish --version)"

alias l="ls -lF --color"

# use neovim as default
alias vi="nvim"
alias vim="nvim"

# tmux
alias topen="tmux a -t"
alias tlist="tmux ls"
alias tnew="tmux new -s"

# update fzf bindings 
fzf_configure_bindings --directory=\cf --git_status=\cg

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"

# run fnm on init
fnm env | source

# pnpm
set -gx PNPM_HOME /Users/marc/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# GIT
abbr -a gst "git status"
abbr -a gco "git checkout"
abbr -a gcob "git checkout -b"
abbr -a gcm "git commit -m"
abbr -a gp "git push"
abbr -a gpl "git pull"
abbr -a gaa "git add --all"

# start starship prompt 
if command -q starship
    starship init fish | source
end

# start zoxide (cd replacement)
if command -q zoxide
    zoxide init fish | source
    alias cd="z"
end
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
