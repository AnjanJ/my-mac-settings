# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Fig preblock ends

export PATH="$HOME/rubyonmac:$PATH"

eval "$(rbenv init - zsh)"

eval "$(nodenv init -)"

nodenv global 18.19.0


# Aliases
# rails
alias rs='rails server'
alias rc='rails console'
alias rslti='rails server - 4000'

# directory
alias work='cd ~/work/code'
alias can='cd ~/work/code/canvas-lms'
alias lti='cd ~/work/code/LTIs'

# mix aliases
alias cans='can && rs'
alias canc='can && rc'
alias ccan='can && code .'
alias rmopen='open -a "RubyMine"'


# Fig postblock ends

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
