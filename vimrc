" ***** .vimrc from Lucas Stephanou https://github.com/lucasts/dotvim
" big thanks for steve losh(http://stevelosh.com) and vim recipes(http://vim.runpaint.org/basics/configuring-vim/)
" and a huge thanks for people writing great plugins!

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-git'
"Bundle 'mbadran/headlights'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
"Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
"Bundle 'bronson/vim-trailing-whitespace'
Bundle 'SirVer/ultisnips'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'sjl/badwolf'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on

set fileencodings=utf-8
set encoding=utf-8
filetype off

set background=dark

syntax on
filetype on
filetype plugin indent on

" turn off compatility with vi and modelines
set nocompatible
set modelines=0

" no backups files
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

" tab settings
set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" color scheme and font
" colorscheme default

" general config
set is hls ic scs magic   "opcoes espertas de busca
set sm             "ShowMatch: mostra o par do parenteses/chaves recem fechado
set hid            "HIDden: nao lembro pra que servia mas era massa
set aw             "AutoWrite: gravacao automatica a cada alteracao
set ai             "AutoIndent: identacao automatica
"set noautoindent
set ts=2           "TabStop: numero de caracteres de avanco do TAB
set report=0       "reporta acoes com linhas
set shm=filmnrwxt  "SHortMessages: encurta as mensagem do rodape
set et             "ExpandTab: troca TABs por espacos
"retab              "converter os TABs ja existentes
set ruler          "mostra a posicao do cursor, regua
"set showcmd        "mostra o comando sendo executado
set laststatus=2   "mostra N linhas de estado (status)
"set textwidth=110   "quebra de linha
set bs=2           "comportamento do backspace
set nosmartindent  "desligando pois esta padrao no CL40
"set visualbell     "pisca a tela ao inves de bipar
set nowrap           "forca a quebra de linha
set nojoinspaces   "! coloca 2 espacos apos o . quando usando o gq
set sw=1           "numero de colunas para o comando > (ShiftWidth)
set wildmode=longest,list:full  "para completacao do TAB igual bash
set omnifunc=phpcomplete#CompletePHP
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" searching with normal regex instead off vim exclusive
nnoremap / /\v
vnoremap / /\v

hi    Search ctermbg=green ctermfg=black
hi IncSearch ctermbg=black ctermfg=cyan

" yeah, stop annoying bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" auto remove trailing whitespace - keep in mind this a bit dangerous
"autocmd FileType c,cpp,python,ruby,java autocmd BufWritePre <buffer> :%s/\s\+$//e

" *** gui vim options
if has("gui_running")
  set guioptions-=m
  set guioptions-=T
  set lines=40
  set guifont=Meslo\ LG\ M\ DZ:h14
  set antialias
  colorscheme solarized
endif

"if has("gui_macvim")
"  macmenu &File.New\ Tab key=<nop>
"  map <D-t> :CommandT<CR>
"endif
" *** end vim options

" *** ruby section
set suffixesadd=.rb
set path+=lib/**,test/**

if has("ruby") " assume system has ruby
  " Add stdlib of environment's ruby to path
  let stdlib = system('ruby -rrbconfig -e"print RbConfig::CONFIG[\"rubylibdir\"]"')
  let &l:path = &path . "," . stdlib
endif

let g:ruby_path = &path
" *** end ruby section


" *** python section
autocmd FileType python set omnifunc=pythoncomplete#Complete " python inteliggent autocomplete
let g:pep8_map='<leader>8'
let g:syntastic_python_checker = 'flake8' " syntastic checker
let g:syntastic_python_checker_args='--ignore=E501' " CAUTION - this will ignore long lines warning
" *** end python section

" *** plugins config section
" control p
let g:ctrlp_map = '<D-t>'
let g:ctrlp_cmd = 'CtrlP'

" t-comment
map <leader>/ <c-_><c-_>
" *** end plugins config section

" allow .vimrc files to be loaded in project folders
set exrc
" breaks any attenpt to run potentially dangerous commands via project's .vimrc files
set secure

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"function! CleverTab()
"  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    return "\<Tab>"
"  else
"    return "\<C-N>"
"  endif        
"  endfunction
"inoremap <Tab> <C-R>=CleverTab()<CR>

