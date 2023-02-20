# Use hp curl google.com to proxy

_PROXY_PORT_FILE=$HOME/.zsh/.proxy_port

function hp() {
    PROXY_PORT=$(cat $_PROXY_PORT_FILE)
    echo "Running command with http proxy, port: ${PROXY_PORT}"
    http_proxy="http://127.0.0.1:${PROXY_PORT}" https_proxy="http://127.0.0.1:${PROXY_PORT}" $@
}

function change_proxy_port() {
    if [ -z "$1" ]; then
        echo "Please input proxy port"
        return
    fi
    echo "Change proxy port to $1"
    echo $1 > $_PROXY_PORT_FILE
}

function change_proxy_clash() {
    change_proxy_port 7890
}

function change_proxy_v2ray() {
    change_proxy_port 1087
}


if [ ! -f $_PROXY_PORT_FILE ]; then
    echo 'Create proxy port file'
    mkdir -p $(dirname $_PROXY_PORT_FILE)
    touch $_PROXY_PORT_FILE
    change_proxy_clash
fi
