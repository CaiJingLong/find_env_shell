# find_env_shell

Quickly insert some environment variables in the command line by .env file.

Support macOS.

Linux should also support.

## Usage

### Bash

download `find_env.sh`, and insert next code to your `~/.bash_profile`

```bash
source ~/Downloads/find_env.sh # your file path
```

It is best to stay on the last line.

### Zsh

download `find_env.zsh`, and insert next code to your `~/.zshrc`

```bash
source ~/Downloads/find_env.zsh # your file path
```

It is best to stay on the last line.

## Zsh Example

```zsh
cd /tmp
git clone https://github.com/caijinglong/find_env_shell.git
cd find_env_shell

cat 'source /tmp/find_env_shell/find_env.zsh' >> ~/.zshrc

cd sub1
source ~/.zshrc
```

then, The zsh will output next:

```zsh
find .env file in /tmp/find_env_shell/sub1
find .env file in /tmp/find_env_shell
source /tmp/find_env_shell/.env
shell.env # the log come from .env of project root path.
source /tmp/find_env_shell/sub1/.env
sub1 # the log come from sub1/.env
```

## Add file to config file

Download `find_env.zsh` or `find_env.sh`

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

If you use the method to add env to your shell, when you change your `.env` file, you just run `find_env` in your shell to refresh environment.

## License

MIT Style
