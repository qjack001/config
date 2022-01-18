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
  # or if brew is not an option:
  # curl https://getmic.ro | bash
  ```
  
  then:
  
  ```bash
  curl https://codeload.github.com/qjack001/config/tar.gz/main | tar -xz --strip=2 config-main/.config/micro
  mv -i micro ~/.config/
  ```
</details>

<details>
  <summary>iTerm2</summary>
  
  Make sure it's installed:
  
  ```bash
  brew install --cask iterm2
  ```
  
  then:
  
  ```bash
  curl https://codeload.github.com/qjack001/config/tar.gz/main | tar -xz --strip=2 config-main/.config/iterm2
  mv -i iterm2 ~/.config/
  ```
  
  Once downloaded, open iTerm2 and go to **Preferences > General > Preferences > Load preferences from a custom folder or URL**.
  In the text input field, write: `~/.config/iterm2`. See also: [Installing Dracula theme for iTerm2](https://draculatheme.com/iterm).
</details>

<details>
  <summary>Starship</summary>
  
  Make sure it's installed:
  
  ```bash
  brew install starship
  ```
  
  and add `eval "$(starship init bash)"` to the end of your `.bashrc` file. Then:
  
  ```bash
  curl https://codeload.github.com/qjack001/config/tar.gz/main | tar -xz --strip=2 config-main/.config/starship.toml
  mv -i starship.toml ~/.config/
  ```
</details>

<details>
  <summary>Fig</summary>
  
  Make sure it's installed:
  
  ```bash
  brew install --cask fig
  ```
  
  then open the Fig app (in your applications folder) and complete the setup guide.
  Once finished, install the settings (note you may need to run `fig app set-path` afterwards):
  
  ```bash
  curl https://codeload.github.com/qjack001/config/tar.gz/main | tar -xz --strip=2 config-main/.fig/settings.json
  mv -i settings.json ~/.fig/
  ```
</details>

<details>
  <summary>Obsidian</summary>
  
  Make sure it's installed:
  
  ```bash
  brew install --cask obsidian
  ```
  
  then:
  
  ```bash
  curl https://codeload.github.com/qjack001/config/tar.gz/main | tar -xz --strip=2 config-main/.config/.obsidian
  mv -i .obsidian ~/Documents/Notes/ # I'm assuming Obsidian has already made a notes folder here
  ```
</details>
