set -x PATH $PATH /opt/homebrew/bin
set -x PATH $PATH /Users/ruofanwang/.local/bin
set -x PATH $PATH /Users/ruofanwang/Library/Python/3.8/bin
set -x PATH $PATH /opt/homebrew/opt/postgresql@15/bin
set -x PATH $PATH /Users/ruofanwang/Library/Python/3.9/bin
set -x PATH $PATH /Users/ruofanwang/go/bin

set -x EDITOR nvim
set -x VISUAL nvim

set -x SHELL /opt/homebrew/bin/fish

alias python="python3"
alias lz="lazygit"
alias la="ls -a"
alias nv="nvim"
alias nv.="nvim ."
alias c="clear"
alias k="kitty @"
alias pip="python -m pip"

function kit
  set pwd (pwd | cut -d '/' -f 4-)
  kitty @ launch --cwd=current --copy-env --title "🚀 $pwd" --hold --no-response
  kitty @ launch --type=tab --cwd=current --copy-env --no-response --title "🌈 $pwd" nvim
end

function nt
  set pwd (pwd | cut -d '/' -f 4-)
  kitty @ launch --type=tab --cwd=current --copy-env --title "🌈 $pwd" --hold --no-response
end

function nw
  set pwd (pwd | cut -d '/' -f 4-)
  kitty @ launch --cwd=current --copy-env --title "🚀 $pwd" --hold --no-response
end

fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs --processes=\cp

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
