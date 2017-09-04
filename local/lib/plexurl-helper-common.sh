#! /usr/bin/env sh
if [ -f "/etc/plexurl.cfg" ]; then
        . /etc/plexurl.cfg
elif [ -f "$HOME/.config/plexurl/plexurl" ]; then
        . "$HOME/.config/plexurl/plexurl.cfg"
elif [ -f "etc/plexurl" ]; then
        . etc/plexurl.cfg
fi

server_option=$([ ! -z "$server" ] && echo "--server $server")
username_option=$([ ! -z "$username" ] && echo "--username $username")
servername_option=$([ ! -z "$servername" ] && echo "--servername $servername")
password_option=$([ ! -z "$password" ] && echo "--password $password")

printf "server: $server_option
username: $username_option
"

$cleanup_command &> /dev/null; true
