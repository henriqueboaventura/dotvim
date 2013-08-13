dotvim
======
*original author: Lucas Stephanou*
*updated by Henrique Boaventura (a.k.a. my self)*

Highly inspired on Lucas Stephanou's dotvim (https://github.com/lucasts/dotvim).
I use this repository to keep my computers always in sync and to avoid all the stress of the inicial vim setup

Install
-------

I think that a sane way is to just clone this repo and then:

    ln -s ~/dotvim ~/.vim
    ln -s ~/dotvim/vimrc ~/.vimrc

After that, open vim and launch the vundle installer:
    
    :BundleInstall

Be happy :)

Plugins
-------

I use vundler for installing plugins, colors, syntax, etc.

The plugins I'm using are pretty basic and probably I don't use it all, but I'm somehow too lazy to update the plugins list:

tpope/vim-rails
kien/ctrlp.vim
tpope/vim-git
pangloss/vim-javascript
tpope/vim-markdown
Bvim-ruby/vim-ruby
cakebaker/scss-syntax.vim
ervandew/supertab
tpope/vim-surround
tpope/vim-fugitive
tomtom/tcomment_vim
SirVer/ultisnips
Lokaltog/vim-easymotion
Lokaltog/vim-powerline
kien/rainbow_parentheses.vim
scrooloose/nerdtree
Valloric/YouCompleteMe
