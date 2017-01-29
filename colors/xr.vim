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

let s:lred = "9"
let s:lgre = "10"
let s:lyel = "11"
let s:lblu = "12"
let s:lmag = "13"
let s:lcya = "14"

let s:bl  = "0"
let s:lbl = "8"
let s:wh  = "7"
let s:lwh = "15"

if &background == "dark"
    let s:f1 = s:bl
    let s:f2 = s:lbl
    let s:a1 = s:wh
    let s:a2 = s:lwh
else
    let s:f1 = s:lwh
    let s:f2 = s:wh
    let s:a1 = s:lbl
    let s:a2 = s:bl
endif

function Format(...)
    return "hi ". a:1 . " ctermfg='".a:2."' ctermbg='" . a:3 . "' cterm='". s:n . a:4 ."'"
endfunction

" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------

" Interface elements
exe Format("LineNr"       , s:f2  , s:n    , s:n)
exe Format("CursorLineNr" , s:a1   , s:n    , s:n)
exe Format("CursorLine"   , s:n    , s:n    , s:n)
exe Format("SignColumn"   , s:n    , s:n    , s:n)
exe Format("Search"       , s:n    , s:n    , s:r)
exe Format("MatchParen"   , s:lyel    , s:n    , s:n)
exe Format("Visual"       , s:n    , s:f1  , s:n)
exe Format("VertSplit"       , s:f2    , s:f2  , s:n)
exe Format("StatusLine"       , s:n    , s:f2  , s:n)
exe Format("StatusLineNC"       , s:bl    , s:f2  , s:n)

exe Format("Pmenu"       , s:a2    , s:f1  , s:n)
exe Format("PmenuSel"       , s:f1    , s:a1  , s:n)
exe Format("PmenuSbar"       , s:f1    , s:f1  , s:n)
exe Format("PmenuThumb"       , s:f2    , s:f2  , s:n)


" Diff
exe Format("DiffAdd"      , s:gre , s:n    , s:n)
exe Format("DiffChange"   , s:blu , s:n    , s:n)
exe Format("DiffDelete"   , s:red , s:n    , s:n)
exe Format("DiffText"     , s:bl  , s:n    , s:n)

" Fold
exe Format("FoldColumn"   , s:n    , s:f1  , s:n)
exe Format("Folded"       , s:n    , s:f1  , s:n)

" Base elements
exe Format("Comment"      , s:a1   , s:n    , s:i)
exe Format("String"       , s:gre  , s:n    , s:n)
exe Format("Identifier"   , s:blu  , s:n    , s:n)
exe Format("Type"         , s:lblu , s:n    , s:n)
exe Format("Boolean"      , s:red  , s:n    , s:i)
exe Format("Statement"    , s:mag  , s:n    , s:n)
exe Format("Conditional"  , s:lmag , s:n    , s:n)
exe Format("PreProc"      , s:cya  , s:n    , s:n)
exe Format("Keyword"      , s:blu  , s:n    , s:n)
exe Format("Conceal"      , s:yel  , s:n    , s:n)
exe Format("Operator"     , s:a2   , s:n    , s:n)
exe Format("Delimiter"    , s:a2   , s:n    , s:n)
exe Format("Macro"        , s:lyel , s:n    , s:n)
exe Format("Special"        , s:lcya , s:n    , s:n)

" Vim config
exe Format("vimMapModKey" , s:lblu , s:n    , s:n)
exe Format("vimOption"    , s:blu  , s:n    , s:n)

" Make files
exe Format("makeIdent"    , s:gre  , s:n    , s:n)
exe Format("makeTarget"   , s:blu  , s:n    , s:b)
exe Format("makeCommands" , s:a2   , s:n    , s:n)

" Spelling
exe Format("SpellBad"     , s:n    , s:lred , s:n)
exe Format("SpellCap"     , s:n    , s:lblu , s:n)
exe Format("SpellRare"    , s:n    , s:lcya , s:n)

" Critic Markup
exe Format("criticAddition"    , s:gre , s:n , s:i)
exe Format("criticDeletion"    , s:red , s:n , s:i)

" Pandoc
exe Format("pandocCiteAnchor"    , s:lbl , s:n , s:n)
exe Format("pandocCiteKey"    , s:gre , s:n , s:n)
exe Format("pandocAtxHeader"    , s:gre , s:n , s:b)

"  }}}
