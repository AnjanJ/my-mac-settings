# Amazon Q pre block. Keep at the top of this file.
# [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

# all latest stuff
eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export EDITOR="code --wait"

# Added by Windsurf
export PATH="/Users/anjan/.codeium/windsurf/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# all latest stuff ends here

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
eval "$(starship init zsh)"

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
alias rspec='bundle exec rspec'
alias dbreset='bin/rails db:drop db:create db:migrate db:seed RAILS_ENV=development'
alias rails_tree='lsd --tree --ignore-glob "tmp" --ignore-glob "vendors" --ignore-glob "node_modules"'

# React
alias nr='npm run'
alias yarnd='yarn dev'
alias yarnt='yarn test --watch'

# System
alias killspring='pkill -9 -f spring'
alias docker-nuke='docker system prune -a --volumes'

# directory
alias work='cd ~/work/code'
alias can='cd ~/work/code/canvas-lms'
alias lti='cd ~/work/code/LTIs'
alias ..='cd ..'

# general
alias ll='ls -lah'
alias gst='git status'
alias ga='git add'
alias gd='git diff'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gb='git branch'
alias gco='git checkout'
alias gstash='git stash'
alias gpop='git stash pop'
alias venv='source venv/bin/activate'
alias pyserve='python3 -m http.server'
alias updatebrew='brew update && brew upgrade && brew cleanup'
alias htop='htop --sort-key PERCENT_CPU'

# Remove all gems for a specific Ruby version
alias delgems='ruby_version=$1; gem_dir=$(rbenv root)/versions/$ruby_version/lib/ruby/gems/*; rm -rf $gem_dir'

# canvas aliases
alias cans='can && rs'
alias canc='can && rc'
alias ccan='can && code .'

# vscode like icons
alias ls='lsd --group-dirs first'
alias ll='lsd -l --group-dirs first'
alias tree='lsd --tree'

# Editor
export BUNDLER_EDITOR="code --wait"

# PG stuff
export PGUSER=postgres
export PGDATABASE=postgres
export PGHOST=localhost
export PGPORT=5432

# for language prompt support
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# # Amazon Q post block. Keep at the bottom of this file.
# [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

# bun completions
[ -s "/Users/anjan/.bun/_bun" ] && source "/Users/anjan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
eval "$(rbenv init - zsh)"
