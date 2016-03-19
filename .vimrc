if has('vim_starting')
   " $B=i2s5/F0;~$N$_(Bruntimepath$B$K(Bneobundle$B$N%Q%9$r;XDj$9$k(B
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundle$B$r=i4|2=(B
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
"" e . $B%D%j!<I=<((B
let g:vimfiler_as_default_explorer = 1
" autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit

"" $B%G%#%l%/%H%j$O%D%j!<I=<($9$k$@$1(B
autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

"" $B%;!<%U%b!<%I$N@_Dj(B("inoremap " "OFF
let g:vimfiler_safe_mode_by_default=0

" netrw$B$O>o$K(Btree view
let g:netrw_liststyle = 3
" 'v'$B$G%U%!%$%k$r3+$/$H$-$O1&B&$K3+$/!#(B("inoremap "
" "$B%G%U%)%k%H$,:8B&$J$N$GF~$lBX$((B)
let g:netrw_altv = 1
" 'o'$B$G%U%!%$%k$r3+$/$H$-$O2<B&$K3+$/!#(B("inoremap "
" "$B%G%U%)%k%H$,>eB&$J$N$GF~$lBX$((B)
let g:netrw_alto = 1
" 'v'$B$d(B'o'$B$G3+$+$l$k?7$7$$%&%#%s%I%&$N%5%$%:$r;XDj$9$k(B
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

