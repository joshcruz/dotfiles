# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# HSTR configuration - add this to ~/.bashrc
alias hh=hstr                     # hh to be alias for hstr
export HISTFILE=~/.zsh_history    # ensure history file visibility
export HSTR_CONFIG=hicolor        # get more colors
export HISTFILESIZE=999999999     # increase size of history
export HISTSIZE=${HISFILESIZE}    # increase number of history items
export HSTR_CONFIG=raw-history-view   # change view to most recent commands
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}" # syncing
bindkey -s "\C-r" "\eqhstr\n"     # bind hstr to Ctrl-r (for Vi mode check doc)
