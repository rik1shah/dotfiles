#!/bin/sh

# Symlink into ~, removing existing

for name in .*; do
  if [ ! $name == ".git" -a ! $name == "." -a ! $name == ".." -a ! $name == "README.md" -a ! $name == "LICENSE" -a ! $name == "install.sh" ]; then
    target="$HOME/$name"

    if [ -a $target ]; then
      echo "Removing $target"	
      rm $target
    fi

    ln -s "$PWD/$name" "$target"
    echo "Symlinked $target -> $PWD/$name"
  fi
done
