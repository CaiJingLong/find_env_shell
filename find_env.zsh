#!/bin/zsh

find_env(){

    CURRENT_PATH=$PWD

    SOURCE_PATH=()

    while [ $PWD != '/' ]; do
        if [ -f '.env' ]; then
            SOURCE_PATH+=($PWD)
            echo "find .env file in $PWD"
        fi
        cd ..
    done

    for ((i = $#SOURCE_PATH; i > 0; i--)); do
        echo "${SOURCE_PATH[i]}/.env"
        source "${SOURCE_PATH[i]}/.env"
    done

    cd $CURRENT_PATH
}

find_env