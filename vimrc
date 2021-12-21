" vim-plug
call plug#begin( '~/.vim/plugged' )
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'scrooloose/nerdcommenter'  " auto add comment
Plug 'tomasiser/vim-code-dark'
" Plug 'w0rp/ale'
call plug#end()
" end vim-plug

"set mouse=a
set rtp+=~/.fzf
set nu
set showmode
set cursorline
" hi CursorLine cterm=none ctermbg=DarkMagenta ctermfg=White
set cindent " auto indent
set tabstop=4 " tab width=4
set shiftwidth=4
set ruler
set backspace=indent,eol,start " backspace can delete tab,'\n',and can use '^w' or '^u' to delete a word or same char
set showcmd " show the lastest cmd
set noai nosi
set t_Co=256

" if has('mouse') set mouse-=a endif
set mouse-=a

set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1
set encoding=utf-8
" <^t> show the width of tab
map <C-t> :echo &shiftwidth<CR>

" Color configuration
set bg=dark
color evening  " Same as :colorscheme evening
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE


" set the status of file at buttom
set statusline=[%{expand('%:p')}][%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%{FileSize()}%{IsBinary()}%=%c,%l/%L\ [%3p%%]

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary]"
    endif
endfunction

function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[Empty]"
    endif
    if bytes < 1024
        return "[" . bytes . "B]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1048576) . "MB]"
    endif
endfunction

colorscheme codedark
hi Comment cterm=NONE
hi ALEWarningSign ctermbg=234 guibg=#1c1c1c ctermfg=228   guifg=#ffff87
hi ALEErrorSign   ctermbg=234 guibg=#1c1c1c ctermfg=196   guifg=#ff0000
hi SignColumn     ctermbg=234 guibg=#1c1c1c
hi ClassMember    ctermfg=117 guifg=#87d7ff
hi ObjectCtr      ctermfg=117 guifg=#87d7ff
hi Todo           ctermfg=226 guifg=#ffff00
hi Operator       ctermfg=206 guifg=#ff5fd7
hi constant       ctermfg=50  guifg=#00ffd7
hi cursorlinenr   ctermfg=226 guifg=#ffff00
hi specialchar    ctermfg=220 guifg=#E3CF57
hi Search         ctermfg=233 ctermbg=214

