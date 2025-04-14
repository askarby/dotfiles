# Dotfiles

My dotfiles (for MacOS / Linux). I don't imagine this would be useful for anyone else?

## Introduction

This is based on [Stow](https://www.gnu.org/software/stow/manual/stow.html), hence separated out into packages.

This means, that various platforms can make varying packages, in case differentiation of configurations (based on platform) is required.

The following sections contains the configurations made (supported tools), and details to enhance them even further (if ever needed)

Any references to `~` (tilde character) refers to your user's home direction (also available through `$HOME`).

## Zsh (Oh My Zsh)

The configuration has quite a few default configuration made, these include (but are not limited to):

- [Oh My Zsh][oh-my-zsh] (installed on top of Zsh)
- [Powerlevel10k theme][powerlevel10k] (to present a beautiful terminal)
- [fzf-git.sh][fzf-git] (to quickly access git functionality through the FZF fuzzy finder)

The configuration is extensible, when it comes to a few key aspects. Think of these configuration to be useful for device-specific
configurations (may be useful only at a client/work, or on your home computer):

### 1. Custom environmental configuration

The default environment configuration can be found here: `~/.zshenv`, and custom environmental configuration can be made in a file
at the location `~/.device-cfg/env.zsh`.

### 2. Custom aliasing

The default aliases can be found here: `~/.aliases` (any file in this folder with the `.zsh`-extension). Custom aliasing can be made
in the folder `~/.device-cfg/aliases` (again, multiple files will be picked up, as long as they have the `.zsh`-extension).

## tmux

The configuration of [tmux] is configured to be versatile, effective and pleasant to look at 
(since it uses the [Catppuccin theme][catppuccin]):

- [Tmux Plugin Manager][tpm] (installing plugins for tmux customization)
- [Catppuccin][tmux-catppuccin] (theming for [tmux], using the [Catppuccin theme][catppuccin])

**ℹ️ Notice:** if the theming is without colors, or looks "odd" or "out of place", tell [Tmux Plugin Manager][tpm] to re-intall the 
plugins (this is done by pressing `[CTRL]+[A]` followed by `I`, capital `i`)

In addition to configuring [tmux], [Tmuxinator][tmuxinator] is also configured with a (at this time of writing, at least), a single
configuration, to open a [tmux]-session to edit these dotfiles, as well as ansible setup files. This can be accessed by executing
the command `tmuxinator start config` (or through the alias `config`).

## bat(cat)

The default configuration is configured to use the [Catppuccin theme][catppuccin] (a pattern is slowly emerging here), but to get it to 
actually work (find the theme), you need to run:

```
cat cache --build
# verify the theme exists by executing the following line (show list 4 catppuccin themes)
bat --list-themes | grep Catppuccin
```

**ℹ️ Notice:** the bat(cat) utility has been aliased to the `cat`-command, which means that typing `cat README.md` is equivalent of
typing `batcat README.md` or `bat README.md`.

<!-- Links -->
[oh-my-zsh]: https://ohmyz.sh/
[powerlevel10k]: https://github.com/romkatv/powerlevel10k
[fzf-git]: https://github.com/junegunn/fzf-git.sh
[tmux]: https://github.com/tmux/tmux
[catppuccin]: https://catppuccin.com/
[tpm]: https://github.com/tmux-plugins/tpm
[tmux-catppuccin]: https://github.com/catppuccin/tmux
[tmuxinator]: https://github.com/tmuxinator/tmuxinator