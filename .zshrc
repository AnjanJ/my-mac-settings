# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Fig preblock ends

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="$HOME/rubyonmac:$PATH"

eval "$(rbenv init - zsh)"

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

nodenv global 18.19.0

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"

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
alias ..='cd ..'

# general
alias ll='ls -lah'
alias gst='git status'
alias ga='git add'
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

# npm
alias nis='npm install'
alias nit='npm init'
alias nst='npm start'
alias nrb='npm run build'
alias nrd='npm run dev'
alias nrl='npm run lint'

# docker
alias dbuild='docker build -t'
alias dps='docker ps'
alias dexec='docker exec -it'
alias dstop='docker stop'
alias drm='docker rm'

# tmux
alias ta='tmux attach -t'
alias tn='tmux new -s'
alias tk='tmux kill-session -t'

# Python
alias py='python3'
alias pipup='pip list --outdated'
alias pipupgrade='pip list --outdated | cut -d " " -f 1 | xargs -n1 pip install -U'

# Remove all gems for a specific Ruby version
alias delgems='ruby_version=$1; gem_dir=$(rbenv root)/versions/$ruby_version/lib/ruby/gems/*; rm -rf $gem_dir'

# mix aliases
alias cans='can && rs'
alias canc='can && rc'
alias ccan='can && code .'

# nvm
 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Fig sunsetting, export plugins and etc.
[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"
export PATH="$PATH:/Users/aj/.local/bin"
if [ -f "/Users/aj/.config/fabric/fabric-bootstrap.inc" ]; then . "/Users/aj/.config/fabric/fabric-bootstrap.inc"; fi

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
