# dotfiles

非 terminal 深度用户, 简单同步配置一下基础环境

## vim 配置

相关 vim 插件已经下载到 .vim/ 中

```bash
./setup_vim.sh
```

设置 git 的默认提交方式是 vim

```bash
git config --global core.editor "vim"
```

## scripts

本目录下的脚本工具集合：

### `scripts/linux`

- 创建新用户、加入 `sudo` 组，并切换到该用户：[create_user.sh](scripts/linux/create_user.sh)
- 下载指定 APT 包及依赖，并打包为 `packages.tar`：[download_apt.sh](scripts/linux/download_apt.sh)
- 查看当前内核 initramfs 模块、拉黑 `kmem` 模块并更新 initramfs：[initramfs.sh](scripts/linux/initramfs.sh)
- 通过 `nvm` 安装 Node.js LTS，并输出 `node`/`npm` 版本：[install_node.sh](scripts/linux/install_node.sh)
- 交互式选择并删除指定内核版本，同时更新 `grub`：[remove_kernel.sh](scripts/linux/remove_kernel.sh)
- 交互式选择默认启动内核，修改 `grub` 配置并提示重启：[switch_kernel.sh](scripts/linux/switch_kernel.sh)

### `scripts/utils`

- 交互式去除文本中的方括号引用，如论文里的 `[1]`：[clean.py](scripts/utils/clean.py)
- 统计 `export.csv` 中各节点流量，输出前 10 名和总流量：[traffic.py](scripts/utils/traffic.py)
- 将命令行参数转换成 VS Code `launch.json` 里的 `args` 格式：[vscode_args.py](scripts/utils/vscode_args.py)

### `scripts/ai`

- 优化 ASR 自动生成的中文字幕，读取当前目录下的 `1.srt`，输出为 `1_optimized.srt`：[cation_opt.py](scripts/ai/cation_opt.py)
- 从文本中提取英文单词、按出现顺序去重，并输出逗号分隔结果，默认读取 `1.txt`，写入 `1.new.txt`：[extract_word.py](scripts/ai/extract_word.py)


## 参考

- [vim color](https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim)
- [color](https://www.ditig.com/256-colors-cheat-sheet)
