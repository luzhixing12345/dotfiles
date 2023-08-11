
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

export host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")

# WSL2
# export http_proxy="http://$host_ip:10811"
# export https_proxy="http://$host_ip:10811"

# V2ray
export http_proxy="http://localhost:20171"
export https_proxy="http://localhost:20171"

alias clangf="cp ~/dotfiles/.clang-format ./"

# xfce4
export DISPLAY="$host_ip:0"
alias gui="sudo startxfce4"

# 根据可执行文件名杀死进程:
# usage: ki main
ki() {
    if [ $# -ne 1 ]; then
        echo "Usage: kill_exec <executable_name>"
        return 1
    fi

    executable_name=$1

    pids=$(ps aux | grep "$executable_name" | grep -v grep | awk '{print $2}')

    if [ -z "$pids" ]; then
        echo "No processes found for executable: $executable_name"
        return 2
    fi

    for pid in $pids; do
        echo "Killing process $pid"
        kill $pid
    done
}

