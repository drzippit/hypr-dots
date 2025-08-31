source /usr/share/cachyos-fish-config/cachyos-config.fish

# Enable !!
function last_history_item; echo $history[1]; end 
abbr -a !! --position anywhere --function last_history_item

zoxide init fish | source
alias cd=z
alias vim=nvim

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
