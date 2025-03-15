# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
