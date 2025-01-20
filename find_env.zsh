#!/bin/zsh

# 定义这个环境变量在你的 ~/.zshrc 里，它分割以支持多个文件名，另外也可以规避掉很多语言默认加载 .env 的问题
# MY_ENV_FILES=".env,.myenv"  

find_env() { 

    CURRENT_PATH=$PWD

    SOURCE_PATH=()
    
    # 使用环境变量 MY_ENV_FILES，默认值支持单个或多个用逗号分割的 `.env` 文件名
    ENV_FILES=${MY_ENV_FILES:-.env}

    # 将文件名列表（以逗号分隔）拆分为数组
    ENV_FILES_ARR=(${(s:,:)ENV_FILES})

    while [ $PWD != '/' ]; do
        for FILE in ${ENV_FILES_ARR[@]}; do  # 遍历文件名数组
            if [ -f "$FILE" ]; then
                SOURCE_PATH+=("$PWD/$FILE")  # 存储完整路径
                echo "Found $FILE in $PWD"
            fi
        done
        cd ..
    done

    # 根据路径从最深层级到最上层依次加载文件
    for ((i = $#SOURCE_PATH; i > 0; i--)); do
        echo "Sourcing ${SOURCE_PATH[i]}"
        source "${SOURCE_PATH[i]}"
    done

    cd $CURRENT_PATH
}

find_env
