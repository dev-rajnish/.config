#!/bin/bash

# Define options with corresponding icons
options="  Lock Screen\n  Logout\n  Shutdown\n  Restart"

# Display the options in a grid with wofi
selected_option=$(echo -e "$options" | wofi --dmenu --prompt "Select an action:" --width 300  -L 6 -c ~/.config/wofi/config -s ~/.config/wofi/style.css )

# Function to display the confirmation prompt
confirmation_prompt() {
    action=$1
    confirmation=$(echo -e "Yes\nNo" | wofi --dmenu --prompt "Are you sure to $action?" --width 300 -L 6 -c ~/.config/wofi/config -s ~/.config/wofi/style.css )

    if [ "$confirmation" == "Yes" ]; then
        echo "Proceeding with $action..."
        return 0
    else
        echo "Action canceled."
        return 1
    fi
}

# Execute the selected option
case "$selected_option" in
    "  Lock Screen")
        # Lock the screen with i3lock or swaylock
        #i3lock -c 000000  # Replace with `swaylock` if using Sway
        # For sway, use:
         swaylock  -c 000000
        ;;
    "  Logout")
        # Ask for confirmation before logging out
        if confirmation_prompt "logout"; then
            hyprctl dispatch exit
        fi
        ;;
    "  Shutdown")
        # Ask for confirmation before shutting down
        if confirmation_prompt "shutdown"; then
            systemctl poweroff
        fi
        ;;
    "  Restart")
        # Ask for confirmation before restarting
        if confirmation_prompt "restart"; then
            systemctl reboot
        fi
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac

