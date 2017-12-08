# My dotfiles (MacOS)
*TODO* extract most of my configurations and bundle them together in one repository

This repository holds all my custom configuration files.

## Installation
These are my settings. I strongly discourage you to blindly copy my files. 
Instead you should take a look at my files and copy the parts that you need. I try to write descriptions wherever i can.

### brew
This is the default package manager on macOS. This should be installed by default but it's not.
To install type the following command:
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

### zsh
I swapped the default [bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) shell for [zsh](https://en.wikipedia.org/wiki/Z_shell).
To install type the following command:
```sh
brew install zsh
```

### oh my zsh
[Oh my zsh](http://ohmyz.sh) is a framework to keep your zsh configurations. It comes bundled with tons of functions, themes, ...
To install type the following command:
```sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### tmux
[tmux](https://github.com/tmux/tmux) is a terminal multiplexer. It lets you tile window panes in a command-line environment.
To install type the following command:
```sh
brew install tmux
```

### vim

## License
