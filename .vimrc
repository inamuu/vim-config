if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'

"ツリー表示
"NeoBundle 'scrooloose/nerdtree'

" git
NeoBundle 'tpope/vim-fugitive'

" Modify status line
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" プラグインチェック
NeoBundleCheck


syntax on
colorscheme molokai
set t_Co=256
set laststatus=2
set number
set ruler
"set autoindent
set expandtab
set tabstop=2
set fileencodings=iso-2022-jp,euc-jp,utf-8,sjis
set fileformats=unix,dos,mac
autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o
set backup
set backupdir=~/.vimbackup

"ツリー表示
let g:vimfiler_as_default_explorer = 1
"autocmd VimEnter * VimFilerExplorer
autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

"autocmd VimEnter * execute 'NERDTree'
"VimEnter * execute 'VimFiler'

