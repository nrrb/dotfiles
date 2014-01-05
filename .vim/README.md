After cloning, run install.sh. 

This script does the following:

    rm ~/.vimrc
    ln -s ~/.vim/vimrc ~/.vimrc

This removes the .vimrc file in the home directory if it's already there, 
and then creates it again only as a symbolic link to ~/.vim/vimrc. 
    
    cd ~/.vim/
    git submodule update --init

This will clone the submodules syntastic and vim-colors-solarized.

    git clone https://github.com/tothebeat/powerline-fonts.git ~/.fonts/
    fc-cache -vf ~/.fonts
    echo Change your font in the terminal program!

This downloads the Powerline font pack into your home directory's ~/.fonts/ 
folder, and then updates the cache using the new fonts. You can then change
the font used in your terminal program (gterm, terminator, whatever) to one
of these "... for Powerline" fonts.

Plugin Manager
--------------
* [vim-pathogen](https://github.com/tpope/vim-pathogen)

Plugins
-------
* [vim-airline](https://github.com/bling/vim-airline)
* [syntastic](https://github.com/scrooloose/syntastic)

Color Schemes
-------------
* [solarized](https://github.com/altercation/vim-colors-solarized)
* [pychimp](https://github.com/Pychimp/Pychimp-vim)
* [inkpot](https://github.com/ciaranm/inkpot)
* [molokai](https://github.com/tomasr/molokai)

Fonts
-----
* [powerline-fonts](https://github.com/Lokaltog/powerline-fonts) - Use "Source Code Pro for Powerline Medium" with Terminator.
