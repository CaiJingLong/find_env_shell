# 说明

这个库的目的在某个目录下的开发环境的设置

通过两个文件来分别支持 zsh 环境和 bash 环境

英文文档的说明更加完整，中文版本仅了为快速且不求甚解的朋友

## 添加方式

zsh:

```shell
mkdir ~/shells
curl https://raw.githubusercontent.com/CaiJingLong/find_env_shell/master/find_env.zsh > ~/shells/find_env.zsh
echo "source ~/shells/find_env.zsh" >> ~/.zshrc

source ~/.zshrc
```

sh or bash

```shell
mkdir ~/shells
curl https://raw.githubusercontent.com/CaiJingLong/find_env_shell/master/find_env.sh > ~/shells/find_env.sh
echo "source ~/shells/find_env.sh" >> ~/.bash_profile

source ~/.bash_profile
```

对于新手朋友后续要注意的是：

- 如果有其他需要修改 .zshrc 或者 .base_profile 的情况，需要始终保持 `source ~/shells/find_env.zsh` 在文件最后一行，以防被其他命令覆盖

## 使用方式

在工程文件夹下添加 .env 文件，然后按照对应语言的方式来添加环境变量，例如我有一个 flutter 的 SDK，在 `/Volumes/Samsung-T5/sdk/flutter/fvm/3.0.0` 文件夹下

然后，添加如下内容

```zsh
export PATH="export PATH=/Volumes/Samsung-T5/sdk/flutter/fvm/3.0.0/bin:$PATH"
```

刷新一下环境, 在命令行敲击，find_env 即可

然后，如果你使用的是 vscode/idea 自带的命令行，在开启新的窗口时，会自动寻找 .env 文件，并注入


## 开源许可证

MIT
