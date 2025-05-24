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

## NeoMutt

[NeoMutt][neomutt] has been configured with the following extensions:

- [Glow][glow], used for rendering Markdown (well, e-mails, in this case)

It's been configured with my e-mail accounts, reading passwords through [pass], and acquiring credentials for the password store through 
[GnuPG][gpg] (The GNU Privacy Guard). Since I do not want to checking my password store, nor GPG keys, these need to be manually configured
(don't worry, I've listed the steps below):

### Configuring `gpg`

There are two ways of configuring [GnuPG][gpg], which are by creating a new key, or importing an existing key. Either way, you'll need a key,
to add entries to [pass] - luckily, both ways are listed below.

**ℹ️ Notice:** It's assumed that you're running [gpg] version 2.x, this can be verified by issueing the command `gpg --version`!

#### New key

To generate a new key, simply enter: `gpg --full-generate-key` and follow the instructions (You can press enter at any of the configuration 
options, apart from the step that requires you to enter your full name, and e-mail).

You can now see your generated (private / secret) key by entering: `gpg --list-secret-keys --keyid-format=long`

```
[keyboxd]
---------
sec   ed25519/<gpg key id> 2025-04-15 [SC]
      <key>
uid                 [ultimate] Anders Paarup Skarby <anders@skarby.info>
ssb   cv25519/<secret sub key id> 2025-04-15 [E]
```

where `<gpg key id>` is needed for configuring [pass] (later on in this guide)

#### Import existing key

Importing an existing key is a simple matter of executing a single command, here (in this example) we asume that they (private) key is
contained in a file called `private.key`.

Simply execute the following command:

```
gpg --import private.key
```

For good measure, exporting a key is a matter of executing the following command:

- For listing the avaialble keys, execute: `gpg --list-keys` (or `gpg --list-secret-keys`)
- For exporting the public key, execute: `gpg --output <output file> --export <key id>`
- For exporting the private (secret) keys, execute: `gpg --output <output file> --export-secret-key --export <key id>`

### Configuring `pass`

TODO: Two guides, 1 for creating a new password store, and 1 for importing an existing one

<!-- Links -->
[oh-my-zsh]: https://ohmyz.sh/
[powerlevel10k]: https://github.com/romkatv/powerlevel10k
[fzf-git]: https://github.com/junegunn/fzf-git.sh
[tmux]: https://github.com/tmux/tmux
[catppuccin]: https://catppuccin.com/
[tpm]: https://github.com/tmux-plugins/tpm
[tmux-catppuccin]: https://github.com/catppuccin/tmux
[tmuxinator]: https://github.com/tmuxinator/tmuxinator
[neomutt]: https://neomutt.org/
[glow]: https://github.com/charmbracelet/glow
[pass]: https://www.passwordstore.org/
[gpg]: https://gnupg.org/