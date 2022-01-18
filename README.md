# Config

Configuration of my environment.

---

## How to load the environment

### 1. Pull down dotfiles

```bash
cd ~
git init .
git remote add origin https://github.com/qjack001/config.git
git pull origin master
ls -aG # let's see what happened
```


### 2. Install

```bash
brew bundle
```

This will probably take a bit. Afterward, you will need to open the
apps (iTerm2, Obsidian, Fig, and VS Code) to finish setting them up
and point them to the right config file.

To load any new changes to the shell as a result:

```bash
source ~/.bash_profile
```

And since [nuke](https://github.com/qjack001/nuke) is not availible through `brew`:

```bash
curl -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/qjack001/nuke/main/nuke.sh -o nuke.sh
sh nuke.sh install
```

---

