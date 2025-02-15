#####################
# Basic git aliases #
#####################
alias gap="git add -p"
alias gcls="git restore ."

################################################
# Combinatory tooling for advanced git aliases #
################################################

# Switches to another local branch (selection through FZF)
alias gsw='git branch | grep -v "^\*" | fzf --height=20% --reverse --info=inline | xargs git checkout'

##################################
# Other tooling, but git related #
##################################
alias lg="lazygit"