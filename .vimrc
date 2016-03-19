if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" Filer
NeoBundle 'Shougo/vimfiler'

" Modify status line
NeoBundle 'itchyny/lightline.vim'

" git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kmnk/vim-unite-giti'

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
set noautoindent
set expandtab
set tabstop=2
set fileencodings=iso-2022-jp,euc-jp,utf-8,sjis
set fileformats=unix,dos,mac
autocmd FileType * setlocal formatoptions-=r
autocmd FileType * setlocal formatoptions-=o
set nobackup
set noswapfile
set browsedir=~/Document

" VimFiler
"" e . ツリー表示
let g:vimfiler_as_default_explorer = 1
" autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit

"" ディレクトリはツリー表示するだけ
autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

"" セーフモードの設定("inoremap " "OFF
let g:vimfiler_safe_mode_by_default=0

" netrwは常にtree view
let g:netrw_liststyle = 3
" 'v'でファイルを開くときは右側に開く。("inoremap "
" "デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。("inoremap "
" "デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
" 'v'や'o'で開かれる新しいウィンドウのサイズを指定する
let g:netrw_winsize = 80


"keymapp
command Vf VimFiler -split -simple -winwidth=30 -no-quit
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
"vnoremap " "zdi^V"<C-R>z^V"<ESC>
"vnoremap ' "zdi'<C-R>z'<ESC>

