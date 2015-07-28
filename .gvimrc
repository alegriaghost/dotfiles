""""""""""""""""""""""""""""""
" 基本設定
""""""""""""""""""""""""""""""
if has("vim_starting")
  set lines=60 columns=180
endif
set title
set ruler
set list
set listchars=tab:>\ ,extends:<
set number
set wildmenu
set guifont=MS_GOTHIC:h9
set guifontwide=MS_Gothic:h9
set fileencoding=utf-8
set fileformat=unix
set cmdheight=2
set laststatus=2
set showcmd
set smartcase
set hlsearch
set incsearch
set showmatch
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set whichwrap=b,s,h,l,<,>,[,]
syntax on
colorscheme hybrid
""""""""""""""""""""""""""""""
" 全角スペースの表示
""""""""""""""""""""""""""""""
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap <> <><Left>
""""""""""""""""""""""""""""""
" キーマップ
""""""""""""""""""""""""""""""
" NERDTree
nnoremap <silent><C-t> :NERDTreeToggle<CR>
" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" カーソル前の文字削除
"inoremap <silent> <C-h> <C-g>u<C-h>
" カーソル後の文字削除
inoremap <silent> <C-d> <Del>
" カーソルから行頭まで削除
inoremap <silent> <C-d>e <Esc>lc^
" カーソルから行末まで削除
inoremap <silent> <C-d>0 <Esc>lc$
" カーソルから行頭までヤンク
inoremap <silent> <C-y>e <Esc>ly0<Insert>
" カーソルから行末までヤンク
inoremap <silent> <C-y>0 <Esc>ly$<Insert>
" 行頭・行末移動
:noremap! <C-e> <Esc>$a
:noremap! <C-a> <Esc>^a
:noremap <C-e> <Esc>$a
:noremap <C-a> <Esc>^a
""""""""""""""""""""""""""""""
" カラー設定
""""""""""""""""""""""""""""""
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4
""""""""""""""""""""""""""""""
