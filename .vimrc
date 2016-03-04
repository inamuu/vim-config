if has('vim_starting')
   " $B=i2s5/F0;~$N$_(Bruntimepath$B$K(Bneobundle$B$N%Q%9$r;XDj$9$k(B
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundle$B$r=i4|2=(B
call neobundle#begin(expand('~/.vim/bundle/'))

" $B%$%s%9%H!<%k$9$k%W%i%0%$%s$r$3$3$K5-=R(B
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'

"$B%D%j!<I=<((B
"NeoBundle 'scrooloose/nerdtree'

" git
NeoBundle 'tpope/vim-fugitive'

" Modify status line
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()

" $B%U%!%$%k%?%$%WJL$N%W%i%0%$%s(B/$B%$%s%G%s%H$rM-8z$K$9$k(B
filetype plugin indent on

" $B%W%i%0%$%s%A%'%C%/(B
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

"$B%D%j!<I=<((B
let g:vimfiler_as_default_explorer = 1
"autocmd VimEnter * VimFilerExplorer
autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

"autocmd VimEnter * execute 'NERDTree'
"VimEnter * execute 'VimFiler'

