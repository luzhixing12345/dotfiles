# dotfiles

非 terminal 深度用户, 简单同步配置一下基础环境

## scripts

本目录下的脚本工具集合：

- **create_user.sh**: 创建新用户并赋予 sudo 权限，自动完成用户创建和权限配置
- **download_apt.sh**: 离线下载 APT 软件包及其依赖，用于离线安装场景
- **remove_kernel.sh**: 交互式删除指定版本的 Linux 内核，避免误删
- **switch_kernel.sh**: 交互式切换 Linux 内核版本，显示当前运行的内核

### nvim+lazyvim

```bash
git clone https://github.com/neovim/neovim --depth=1
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

刷新

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

## 参考

- [vim color](https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim)
- [color](https://www.ditig.com/256-colors-cheat-sheet)
