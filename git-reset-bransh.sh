#!/bin/sh


greset() {
    local off='\033[0m'       # Text Reset
    local red='\033[0;31m'
    local cyan='\033[0;36m'
    local blue='\033[0;34m'
    local green='\033[0;32m'
    local Green='\033[1;32m' # ищдв

    if git rev-parse --git-dir > /dev/null 2>&1
    then
        local gpBranch_abbr=$(git rev-parse --abbrev-ref HEAD)

        local str_command="git reset --hard origin/${gpBranch_abbr}"

        echo "${cyan} ${str_command} ${green}[${Green}N${green}/y] ${off}";

        read item
        if [ "$item" == "Y" ] || [ "$item" == "y" ] ; then
            eval $str_command
        fi

    else
        echo "$red No git repo $off"
    fi
}

greset
