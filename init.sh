
apt install sudo
sudo apt install curl wget
curl -Ls https://mirrors.v2raya.org/go.sh | sudo bash
sudo systemctl disable v2ray --now
wget -qO - https://apt.v2raya.org/key/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/v2raya.asc
echo "deb https://apt.v2raya.org/ v2raya main" | sudo tee /etc/apt/sources.list.d/v2raya.list
sudo apt update
sudo apt install v2raya
sudo systemctl start v2raya.service
sudo systemctl enable v2raya.service

echo "http://localhost:2017/\n"
echo "V2rayN: https://me.tofly.cyou/user"
echo "more info: https://luzhixing12345.github.io/2022/11/08/%E7%8E%AF%E5%A2%83%E9%85%8D%E7%BD%AE/Linux%E4%BB%A3%E7%90%86%E9%85%8D%E7%BD%AE/"