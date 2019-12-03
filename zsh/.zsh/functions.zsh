# Reset prompt every minute to update hour
TRAPALRM() {  # don't clear completion items on reset prompt
    if [ "$WIDGET" != "complete-word" ]; then
        zle reset-prompt
    fi
}


dirwatch() {
    inotifywait -m $1 -e create -e move -e delete |
        while read thepath action file; do
            echo "$action $file"
        done
}

where() {
    find . -name \*$1\*
}

project() {
    cd "$HOME/projects/$@"
}

postedin() {
    cd "$HOME/projects/postedin/$@"
}

work() {
    i3-msg splith
    cd "$HOME/projects/$@"
    if [[ "$@" == "postedin/marketplace" || "$@" == "postedin/marketplace/" ]]; then
        dbus-launch gnome-terminal --working-directory="$HOME/projects/$@/api"
    else
        dbus-launch gnome-terminal --working-directory="$HOME/projects/$@"
    fi

    dbus-launch gnome-terminal --working-directory="$HOME/projects/$@"

    code "$HOME/projects/$@"
    sleep 1
    i3-msg "move up"
}
