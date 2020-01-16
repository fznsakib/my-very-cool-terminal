<p align="center">
    <img width="300" src="https://user-images.githubusercontent.com/15062683/72544747-cf692d00-387f-11ea-90c9-53a04d306e4c.png"/>
</p>

This repository holds all the configuration and instructions needed to make your terminal **cool** and _functional_ like mine! I have also included any other plugins that I have installed which I find useful.

If there's anything you want to change to make it fit how you want it, just go ahead and change the config files as you please.

> **Insert GIF here**

## Why `my-very-cool-terminal`

- 🎨 Cool theme/customised colour scheme
- 💻 System status (battery/time/permissions and more)
- 🚀 git at a glance (unstaged, staged, commit, push, pull and more)
- ⚡️ Powerful auto-suggestions based on history and available commands
- 🖍 Syntax highlighting
- 🎶 See your currently playing song on Spotify
- 🦾 Lots of handy aliases such as:
  - `cd Documents` -> `Documents`
  - `cd ../../..`   -> `....`
  - `git add --all` -> `gaa`
  - `glola` -> produces a very informative visual graph of a git repository's history

## Main pre-requisites

- [zsh](https://www.howtoforge.com/tutorial/how-to-setup-zsh-and-oh-my-zsh-on-linux/)
- [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)
- [tmux](https://linuxize.com/post/getting-started-with-tmux/)
- [powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Fura Code Nerd Font (based on Firacode)](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Retina/complete/Fura%20Code%20Retina%20Nerd%20Font%20Complete.otf)

### Plugins

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [Spotify Info Plugin for `tmux`](https://github.com/jdxcode/tmux-spotify-info)


Installed on MacOS Catalina. Can be recreated on Linux too, if installation steps are followed accordingly.

## Instructions

1. Download and install all prerequisites, including plugins listed above
2. Make zsh your default shell
    - `chsh -s /bin/zsh`
3. Download code from repository and put in your root directory
4. If needed, change ZSH path in `.zshrc`
    - `export ZSH="/Users/<username>/.oh-my-zsh"`
5. Set terminal's default font to compatible Nerd Font
    - e.g. Install Fura Code Nerd Font
    - Select font: `Terminal -> Preferences -> Text -> Font`
6. Open `material-design.terminal` to apply colour scheme
7. `source ~/.zshrc`
8. Open tmux
    - `tmux source-file ~/.tmux.conf`
9. Customise to make your own!

Notes:

- Remember to change your font to whatever Nerd Font you use on your external editor for integrated terminal to work
- Some settings (e.g. aliases) may be specific to my system

## Other Cool Stuff

1. [tree](https://sourabhbajaj.com/mac-setup/iTerm/tree.html) - a recursive directory listing command that produces a depth indented visual listing of files

## To-Do

- [ ] Increase powerline thickness
- [ ] Add `zsh-fzf`
