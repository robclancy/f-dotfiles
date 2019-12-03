#rofi -run-list-command ". ~/.config/rofi/run-commands.sh" -run-command "/bin/zsh -i -c '{cmd}'" -show combi -combi-modi "drun,run"
rofi -run-command "/bin/zsh -i -c '{cmd}'" -show drun
