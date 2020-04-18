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

## License

MIT Style
