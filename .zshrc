# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-"$HOME/.cache"}/p10k-instant-prompt-$n.zsh" ]]; then
  source "${XDG_CACHE_HOME:-"$HOME/.cache"}/p10k-instant-prompt-$n.zsh"
fi

# if antigen is not installed on the OSX or Linux machine, install it
if [ ! -d "$HOME/.antigen" ]; then
  curl -L git.io/antigen >$HOME/.antigen/antigen.zsh
fi

source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# load plugins
antigen bundle git
antigen bundle macos
antigen bundle zoxide
antigen bundle pip
antigen bundle fzf
antigen bundle nekofar/zsh-pnpm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle djui/alias-tips

antigen theme romkatv/powerlevel10k

antigen apply

export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:/opt/homebrew/opt/llvm/bin:/usr/local/bin:/opt/homebrew/bin:/usr/bin:/opt/homebrew/opt:/opt/homebrew/opt/openssl@3/bin:/bin:/usr/sbin:/sbin:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin":$PATH

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias addalias="vim ~/.zsh/aliases.zsh"

# Other aliases:
source ~/.zsh/aliases.zsh

# pnpm
export PNPM_HOME="/Users/maurits/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-02-28 19:14:15
export PATH="$PATH:/Users/maurits/.local/bin"

# Created by `pipx` on 2024-02-28 19:14:17
export PATH="$PATH:/Users/maurits/Library/Python/3.9/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_BASE="/opt/homebrew/bin/fzf"

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc
export PATH="/opt/homebrew/opt/libxslt/bin:$PATH"
export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
