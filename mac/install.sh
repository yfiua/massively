#!/bin/sh
# .bash_profile
if [ -f ~/.bash_profile ]; then
    echo "File ~/.bash_profile already exists! Saving to ~/.bash_profile.old"
    mv ~/.bash_profile ~/.bash_profile.old
    echo "Merging automatically ..."
    cat ~/.bash_profile.old .bash_profile > ~/.bash_profile
    echo "Merged successfully! You may need to check it manually by:"
    echo "vi ~/.bash_profile"
else
    cp .bash_profile ~/.bash_profile
    echo "~/.bash_profile created successfully!"
fi

# key bindings
if [ ! -d ~/Library/KeyBindings ]; then
    mkdir ~/Library/KeyBindings
fi
cp ./DefaultKeyBinding.dict ~/Library/KeyBindings

echo "Changing editor for git to MacVIM ..."
git config --global --replace-all core.editor "mvim -v"

echo "Success! (if u don't see an error)"

