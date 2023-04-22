# Instructions

1. clone project to .config/
2. `brew install neovim`
3. open nvim . in terminal
4. run `:PackerSync`
5. run `:Mason`
6. `brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font`

- For nerd font to work change iterm font to hack nerd font

## Other dependencies

1. `brew install ripgrep` -- enable live grep
2. `brew install fd` -- enable live grep
3. Install debugpy into a dedicated virtualenv:

```
mkdir .virtualenvs
cd .virtualenvs
python -m venv debugpy
debugpy/bin/python -m pip install debugpy
```
