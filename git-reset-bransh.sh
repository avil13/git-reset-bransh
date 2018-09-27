#!/bin/sh


greset() {
    local off='\033[0m'       # Text Reset
    local red='\033[0;31m'
    local cyan='\033[0;36m'

    if git rev-parse --git-dir > /dev/null 2>&1
    then
        local gpBranch_abbr=$(git rev-parse --abbrev-ref HEAD)

        local str_command="git reset --hard origin/${gpBranch_abbr}"

        echo $str_command;
        
    else
        echo "$red No git repo $off"
    fi
}

greset
