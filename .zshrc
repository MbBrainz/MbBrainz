# antigen path when using Homebrew:
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

export PATH=$HOME/go/bin:$PATH
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
