# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LS_COLORS="$(vivid generate catppuccin-macchiato)"

source $ZSH/oh-my-zsh.sh
source $ZSH/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle asdf
antigen bundle command-not-found
antigen bundle fzf
antigen bundle git
antigen bundle heroku
antigen bundle lein
antigen bundle pip

# Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Import aliases, environment etc.
source $HOME/.zshenv
for f in $HOME/.aliases/*; do source $f; done

# ... also, allow for configuration that's not in dotfiles
#     this may be very useful for device specific configuraiton
DEVICE_CFG_HOME="$HOME/.device-cfg"
if [ -d $DEVICE_CFG_HOME ]; then
  # custom environment
  if [ -f "$DEVICE_CFG_HOME/env.zsh" ]; then
    source $DEVICE_CFG_HOME/env.zsh
  fi
  # custom aliases
  if [ -d "$DEVICE_CFG_HOME/aliases" ]; then
    for f in $DEVICE_CFG_HOME/aliases/*; do source $f; done
  fi
fi


# Add FZF Git
source $HOME/.config/zsh/fzf-git.sh

# Add carapace
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

# Ensure JAVA_HOME is set for asdf-java
source ~/.asdf/plugins/java/set-java-home.zsh


# bun completions
[ -s "/Users/askarby/.bun/_bun" ] && source "/Users/askarby/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# flutter
export FLUTTER_HOME="/Users/askarby/tools/flutter"
export PATH="$FLUTTER_HOME/bin:$PATH"

# ruby
export RUBY_HOME="/opt/homebrew/opt/ruby"
export PATH="$RUBY_HOME/bin:$PATH"

# android
export ANDROID_HOME="/Users/askarby/Library/Android/sdk"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/askarby/.lmstudio/bin"
# End of LM Studio CLI section

