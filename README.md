## Instalation:

```sh
git clone git@github.com:olegabyst/dotvim.git ~/.config/nvim
```

## Create symlink:

```sh
cd ~
ln -s ~/.config/nvim ~/.vim
ln -s ~/.config/nvim/init.vim ~/.vimrc
cd ~/.config/nvim
git submodule init
git submodule update --remote
```
