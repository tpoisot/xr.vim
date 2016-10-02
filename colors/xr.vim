" File:       xr.vim
" Maintainer: Timothée Poisot (tpoisot)
" URL:        https://github.com/tpoisot/jellybeans-Xresources.vim
" Modified:   28 Mar 2014 04:45 AM AEST
" License:    MIT

if has("gui_running") || &t_Co < 256
  finish
endif

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xr"

" Palette
let s:n   = "NONE"
let s:b   = ",bold"
let s:i   = ",italic"
let s:u   = ",underline"
let s:r   = ",reverse"

let s:red = "1"
let s:gre = "2"
let s:yel = "3"
let s:blu = "4"
let s:mag = "5"
let s:cya = "6"

let s:bl  = "0"
let s:lbl = "8"
let s:wh  = "7"
let s:lwh = "15"

function Format(...)
    return "hi ". a:1 . " ctermfg='".a:2."' ctermbg='" . a:3 . "' cterm='". s:n . a:4 ."'"
endfunction

" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------

" Interface elements
exe Format("LineNr", s:lbl, s:n, s:n)
exe Format("CursorLineNr", s:bl, s:n, s:b)
exe Format("CursorLine", s:n, s:n, s:n)
exe Format("SignColumn", s:n, s:n, s:n)

" Diff
exe Format("DiffAdd", s:gre, s:n, s:b)
exe Format("DiffChange", s:blu, s:n, s:b)
exe Format("DiffDelete", s:red, s:n, s:b)
exe Format("DiffText", s:bl, s:n, s:b)

" Base elements
exe Format("Comment", s:wh, s:n, s:i)
exe Format("String", s:gre, s:n, s:n)

"  }}}
