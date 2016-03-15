"vim用のバックアップファイルの設定
set backupdir=~/.vimbackup
set directory=~/.vimbackup


syntax on
colorscheme molokai
set t_Co=256
set number
set ruler
"set autoindent
set expandtab
set tabstop=2
set fileencodings=iso-2022-jp,euc-jp,utf-8,sjis
set fileformats=unix,dos,mac
set nobackup

"macvim用の設定
set lines=40
set columns=120

"インデント
NeoBundle 'nathanaelkane/vim-indent-guides'
