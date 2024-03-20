### ohmyzsh
if [ -d '/Users/aj/.local/share/fig/plugins/ohmyzsh' ]; then
export ZSH="/Users/aj/.local/share/fig/plugins/ohmyzsh"

source '/Users/aj/.local/share/fig/plugins/ohmyzsh/oh-my-zsh.sh'
fi

### zsh-autosuggestions
if [ -d '/Users/aj/.local/share/fig/plugins/zsh-autosuggestions' ]; then

source '/Users/aj/.local/share/fig/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'
fi

### zsh-syntax-highlighting
if [ -d '/Users/aj/.local/share/fig/plugins/zsh-syntax-highlighting' ]; then

source '/Users/aj/.local/share/fig/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
fi

### zsh-you-should-use_MichaelAquilina
if [ -d '/Users/aj/.local/share/fig/plugins/zsh-you-should-use_MichaelAquilina' ]; then

source '/Users/aj/.local/share/fig/plugins/zsh-you-should-use_MichaelAquilina/you-should-use.plugin.zsh'
fi

### zsh-completions
if [ -d '/Users/aj/.local/share/fig/plugins/zsh-completions' ]; then

source '/Users/aj/.local/share/fig/plugins/zsh-completions/zsh-completions.plugin.zsh'
autoload -Uz compinit; compinit;
fi

### spaceship-prompt
if [ -d '/Users/aj/.local/share/fig/plugins/spaceship-prompt' ]; then

source '/Users/aj/.local/share/fig/plugins/spaceship-prompt/spaceship.zsh'
fi

### git-aliases_mdumitru
if [ -d '/Users/aj/.local/share/fig/plugins/git-aliases_mdumitru' ]; then

source '/Users/aj/.local/share/fig/plugins/git-aliases_mdumitru/git-aliases.zsh'
fi

### git-open
if [ -d '/Users/aj/.local/share/fig/plugins/git-open' ]; then

source '/Users/aj/.local/share/fig/plugins/git-open/git-open.plugin.zsh'
fi

### mysql-colorize_zpm-zsh
if [ -d '/Users/aj/.local/share/fig/plugins/mysql-colorize_zpm-zsh' ]; then

source '/Users/aj/.local/share/fig/plugins/mysql-colorize_zpm-zsh/mysql-colorize.plugin.zsh'
fi

### colorize_zpm-zsh
if [ -d '/Users/aj/.local/share/fig/plugins/colorize_zpm-zsh' ]; then

source '/Users/aj/.local/share/fig/plugins/colorize_zpm-zsh/colorize.plugin.zsh'
fi

### elixir-oh-my-zsh_gusaiani
if [ -d '/Users/aj/.local/share/fig/plugins/elixir-oh-my-zsh_gusaiani' ]; then

source '/Users/aj/.local/share/fig/plugins/elixir-oh-my-zsh_gusaiani/elixir.plugin.zsh'
fi

### git-extra-commands_unixorn
if [ -d '/Users/aj/.local/share/fig/plugins/git-extra-commands_unixorn' ]; then

source '/Users/aj/.local/share/fig/plugins/git-extra-commands_unixorn/git-extra-commands.plugin.zsh'
export PATH="$PATH:/Users/aj/.local/share/fig/plugins/git-extra-commands_unixorn/bin"
fi

### zsh-extract_le0me55i
if [ -d '/Users/aj/.local/share/fig/plugins/zsh-extract_le0me55i' ]; then

source '/Users/aj/.local/share/fig/plugins/zsh-extract_le0me55i/extract.plugin.zsh'
fi
