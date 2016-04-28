# textdiff.zsh

Find the difference between two strings.

![](http://puu.sh/oysuS/db52ce7bea.png)

![](http://puu.sh/oysE1/d0579e2c3b.png)


## Installation

*Note:* This was built on a Mac.  Support for Linux is experimental, and has not been tested by the plugin author.

### Oh-My-ZSH
Assuming you have [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), you can simply write

```bash
git clone https://github.com/peterhurford/textdiff.zsh ~/.oh-my-zsh/custom/plugins/textdiff
echo "plugins+=(textdiff)" >> ~/.zshrc
```

(Alternatively, you can place the `textdiff` plugin in the `plugins=(...)` local manually.)

-
### Antigen
Add `antigen bundle peterhurford/textdiff.zsh` to your `.zshrc` wherever you're adding the other antigen bundles.

### Zgen
If you’re using [Zgen](https://github.com/tarjoilija/zgen), add `zgen load peterhurford/textdiff.zsh` to your `.zshrc` wherever you're adding your other zgen plugins.

### Bash
If you're lame and use bash, you can install this directly to your `~/.bash_profile`:

```bash
curl -s https://raw.githubusercontent.com/peterhurford/textdiff.zsh/master/textdiff.plugin.zsh >> ~/.bash_profile
```````


#### Integration with icdiff

To use [icdiff](https://www.jefftk.com/icdiff) instead of `diff`, set `export TEXTDIFF_USES_ICDIFF=1`.
