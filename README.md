# vimrc

## 背景

非 vim 深度用户, 日常编程多使用 Vscode, 使用 vim 仅用于一些代码的验证或文件的修改预览

本仓库的配置主要根据个人编码习惯对默认 vim 的键位映射做了一些调整

**由于每个人编码习惯不尽相同, 所以不建议直接使用此配置**, 如有需要您可 fork 本仓库进行修改微调

![20230402095215](https://raw.githubusercontent.com/learner-lu/picbed/master/20230402095215.png)

## 安装

> 注意 vimplug 插件的下载需要翻墙, 请优先解决网络代理问题

```bash
./install.sh
```

当您第一次启动 vim 的时候会开始下载插件并安装, 然后就可以开始使用了

## 其他

.clang-format

```
BasedOnStyle: Google
IndentWidth: 4
AllowShortFunctionsOnASingleLine: None
AllowShortBlocksOnASingleLine: Never
AllowShortIfStatementsOnASingleLine: false
ColumnLimit: 100
BinPackArguments: false
BraceWrapping:
  AfterStruct: true
  AfterFunction: true
  AfterClass: true
  AfterControlStatement: true
  SplitEmptyFunction: false
  SplitEmptyRecord: false
  SplitEmptyNamespace: false
  BeforeCatch: true
  BeforeElse: true
  IndentBraces: true
```

bashrc 中的映射

```bash
alias copy='tee >(xargs echo -n | xclip -selection clipboard) <<< "$(cat)"'
```

我们可以使用例如 `pwd | copy` 将输出复制到剪切板， **但是需要注意如果输出中含有引号会存在问题**

## 参考

- [vim color](https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim)
- [color](https://www.ditig.com/256-colors-cheat-sheet)
