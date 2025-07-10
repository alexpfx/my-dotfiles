#!/usr/bin/fish

mkdir -p bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/ubin
fish_add_path $HOME/data/ubin
cd bin
fish_add_path (pwd)

fisher install jethrokuan/fzf
fisher install jethrokuan/z
fisher install franciscolourenco/done
fisher install jorgebucaran/autopair.fish


