# dotfiles

## 简介

非 terminal 深度用户, 简单同步配置一下基础环境

文档: [dotfiles document](https://luzhixing12345.github.io/dotfiles/)

## 安装

```bash
./install.sh
```

## 其他

### 初始化 ssh 的 key

> 因为 `authorized_keys` 总是打不对

```bash
wget -O - https://raw.githubusercontent.com/luzhixing12345/dotfiles/main/scripts/ssh.sh | sudo bash 
```

### ssh

```bash
ssh-keygen -t rsa -C "luzhixing12345@163.com"
cat ~/.ssh/id_rsa.pub
```

```bash
ssh -T git@github.com
```

## 参考

- [vim color](https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim)
- [color](https://www.ditig.com/256-colors-cheat-sheet)
