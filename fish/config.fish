if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x QT_QPA_PLATFORMTHEME "qt5ct"
end

function fish_greeting
    neofetch
end

fish_add_path /home/BNN/.spicetify
