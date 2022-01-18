# Config

Configuration of my environment.

---

## How to load the environment

Everything, all at once! Good for new builds. Please do not do this in
a home directory you are fond of.

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

## Just load peices of the environment

Perhaps you don't want everything. Here's how you can pull down the
settings on a per-app basis.


<details>
  <summary>Micro</summary>
  
  Make sure it's installed:
  
  ```bash
  brew install micro
  ```
  
  then:
  
  ```bash
  curl https://codeload.github.com/qjack001/config/tar.gz/main | tar -xz --strip=2 config-main/.config/micro
  mv micro ~/.config/ -f
  ```
</details>

