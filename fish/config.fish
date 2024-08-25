if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x QT_QPA_PLATFORMTHEME "qt5ct"
end

cat ~/.cache/wal/sequences

function fish_greeting
    neofetch
end
alias nlear='clear; neofetch'

fish_add_path /home/BNN/.spicetify
