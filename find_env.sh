#!/bin/sh

find_env(){
    CURRENT_PATH=$PWD

    SOURCES=""

    while [ $PWD != '/' ]; do
        if [ -f '.env' ]; then
            SOURCES="$PWD $SOURCES"
            echo "find .env file in $PWD"
        fi
        cd ..
    done

    for SOURCE_PATH in $SOURCES; do
        echo "source $SOURCE_PATH/.env"
        source "$SOURCE_PATH/.env"
    done

    cd $CURRENT_PATH
}

find_env