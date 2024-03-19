# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# Fig preblock ends

export PATH="$HOME/rubyonmac:$PATH"

eval "$(rbenv init - zsh)"

eval "$(nodenv init -)"

nodenv global 18.19.0

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"


# Aliases
alias rmopen='open -a "RubyMine"'
alias delpid='cd /opt/homebrew/var/postgresql@14 && rm -rf postmaster.pid'

# rails
alias rs='rails server'
alias rc='rails console'
alias rslti='rails server -p 4000'
alias devmig='bin/rails db:migrate RAILS_ENV=development'
alias testmig='bin/rails db:migrate RAILS_ENV=test'
alias deljob='bundle exec script/delayed_job run'
alias skiq='bundle exec sidekiq'

# directory
alias work='cd ~/work/code'
alias can='cd ~/work/code/canvas-lms'
alias lti='cd ~/work/code/LTIs'

# mix aliases
alias cans='can && rs'
alias canc='can && rc'
alias ccan='can && code .'

# Fig postblock ends

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
