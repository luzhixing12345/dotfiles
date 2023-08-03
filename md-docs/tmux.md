
# tmux

激活环境

```bash
tmux source-file ~/.tmux.conf
```

杀死所有会话

```bash
tmux kill-server
```

<kbd>ctrl</kbd> + <kbd>b</kbd> => <kbd>ctrl</kbd> + <kbd>x</kbd> 

> 不使用 ctrl+a 主要是因为避免和 qemu 冲突

水平创建窗口 => `p`

竖直创建窗口 => `;`

切换 `ctrl-o`

查看 `w`

## 参考

- [ruanyifeng tmux](https://www.ruanyifeng.com/blog/2019/10/tmux.html)
