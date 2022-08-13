# Send Output To Editor (sote)

_Pronounced sauté, get it? (Sorry.)_

Sends the output of the last command to your default editor.

If that’s something like [Helix Editor](https://helix-editor.com), you can use multiple cursors, etc., to manipulate it and copy it into the system clipboard (<kbd>space</kbd><kbd>y</kbd> in Helix) to use in future commands.

⚠️  Sote re-runs the last command in order to get the output __so don’t use it after a command that has side-effects__.

💡 Terminals/shells [could provide much better support for this use case](https://github.com/fish-shell/fish-shell/issues/2644). Given how obsessed some folks are about never touching the mouse, I’m quite suprised it hasn’t happened yet.

## Install

Install using [Fisher](https://github.com/jorgebucaran/fisher):

```shell
fisher install small-tech/sote
```

## Use

You can use the `sote` command or, even better, bind it to a keyboard shortcut. For example, to bind it to <kbd>ctrl</kbd><kbd>s</kbd>, add the following to your fish configuration (likely _~/.config/fish/config.fish_):

```fish
bind \cs sote
```

## How it works

Technically, like basically everything else in Fish shell, [it’s just a function](https://zerokspot.com/weblog/2016/01/16/fishy-functions/).

It gets your last history item (`$history[1]`), re-runs it using `eval()`, then splits the output into multiple lines and sends it to your `$EDITOR`.

## Related tools and workflows

  - Instead of getting a directory listing (e.g., `ls -1`) and manipulating the results with Sote, you could use a file manager like [lf](https://github.com/gokcehan/lf) that lets you make [multiple selections](https://pkg.go.dev/github.com/gokcehan/lf#section-readme) (in lf, by pressing <kbd>space</kbd>).

  - Specifically for renaming multiple files, see [mmv](https://github.com/itchyny/mmv).
  
## Like this? Fund us!

[Small Technology Foundation](https://small-tech.org) is a tiny, independent not-for-profit.

We exist in part thanks to patronage by people like you. If you share [our vision](https://small-tech.org/about/#small-technology) and want to support our work, please [become a patron or donate to us](https://small-tech.org/fund-us) today and help us continue to exist.

## Copyright

Copyright &copy; 2022-present [Aral Balkan](https://ar.al), [Small Technology Foundation](https://small-tech.org).

## License

Sote is released under [ISC](./LICENSE).
