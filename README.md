# dotfiles
![example workflow](https://github.com/PotassiumPermanganate/dotfiles/actions/workflows/main.yml/badge.svg)


Run:
```
git clone --bare https://github.com/PotassiumPermanganate/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```
