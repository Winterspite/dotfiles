[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

# You have to use npm to install npm, and that will give you the
# completion.sh file you need.
#source /usr/local/lib/node_modules/npm/lib/utils/completion.sh

source "$HOME/.zsh/antigen/antigen.zsh"
source "$HOME/.zsh/k/k.sh"

# We use primarily oh-my-zsh plugins
antigen use oh-my-zsh

# Set the familiar blinks theme
antigen theme blinks

antigen bundle git 
antigen bundle ruby 
antigen bundle debian 
antigen bundle tmux 
antigen bundle encode64 
antigen bundle gem 
antigen bundle gpg-agent 
antigen bundle gitfast 
antigen bundle vi-mode
antigen bundle rake
antigen bundle rvm
antigen bundle bundler
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found
antigen bundle history
antigen bundle tmux
antigen bundle vundle

antigen-apply

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bro/bin

# Including pentest tools
export MSF_DATABASE_CONFIG=/usr/local/share/metasploit-framework/database.yml

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Gopath
export GOPATH="/home/barrettj/.gopath"

