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

function! XRFormat(...)
    return "hi! ". a:1 . " ctermfg='".a:2."' ctermbg='" . a:3 . "' cterm='". s:n . a:4 ."'"
endfunction

" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------

" Interface elements
exe XRFormat("LineNr"       , s:f2  , s:n    , s:n)
exe XRFormat("CursorLineNr" , s:a1   , s:n    , s:n)
exe XRFormat("CursorLine"   , s:n    , s:n    , s:n)
exe XRFormat("NonText"   , s:f1    , s:n    , s:n)
exe XRFormat("SignColumn"   , s:n    , s:n    , s:n)
exe XRFormat("Search"       , s:n    , s:n    , s:r)
exe XRFormat("MatchParen"   , s:lyel    , s:n    , s:n)
exe XRFormat("Visual"       , s:n    , s:f1  , s:n)
exe XRFormat("VertSplit"       , s:f1    , s:f1  , s:n)
exe XRFormat("StatusLine"       , s:n    , s:f1  , s:b)
exe XRFormat("StatusLineNC"       , s:a1    , s:f1  , s:n)

" Autoc-complete menu
exe XRFormat("Pmenu"          , s:f1    , s:f2  , s:n)
exe XRFormat("PmenuSel"       , s:f1    , s:a1  , s:n)
exe XRFormat("PmenuSbar"      , s:f2    , s:f2  , s:n)
exe XRFormat("PmenuThumb"     , s:f1    , s:f1  , s:n)

" Title
exe XRFormat("Title"       , s:lyel    , s:n  , s:n)

" Diff
exe XRFormat("DiffAdd"      , s:gre , s:n    , s:n)
exe XRFormat("DiffChange"   , s:blu , s:n    , s:n)
exe XRFormat("DiffDelete"   , s:red , s:n    , s:n)
exe XRFormat("DiffText"     , s:bl  , s:n    , s:n)

" Fold
exe XRFormat("FoldColumn"   , s:n    , s:f1  , s:n)
exe XRFormat("Folded"       , s:n    , s:f1  , s:n)

" Base elements
exe XRFormat("Comment"      , s:f2   , s:n    , s:i)
exe XRFormat("String"       , s:gre  , s:n    , s:n)
exe XRFormat("Identifier"   , s:blu  , s:n    , s:n)
exe XRFormat("Type"         , s:lblu , s:n    , s:n)
exe XRFormat("Boolean"      , s:red  , s:n    , s:i)
exe XRFormat("Statement"    , s:mag  , s:n    , s:n)
exe XRFormat("Conditional"  , s:lmag , s:n    , s:n)
exe XRFormat("PreProc"      , s:cya  , s:n    , s:n)
exe XRFormat("Keyword"      , s:blu  , s:n    , s:n)
exe XRFormat("Conceal"      , s:yel  , s:n    , s:n)
exe XRFormat("Operator"     , s:a1   , s:n    , s:n)
exe XRFormat("Delimiter"    , s:a2   , s:n    , s:n)
exe XRFormat("Macro"        , s:lyel , s:n    , s:n)
exe XRFormat("Special"      , s:lcya , s:n    , s:n)
exe XRFormat("Symbol"       , s:lred , s:n    , s:n)

" Julia
exe XRFormat("juliaSymbol"  , s:lred , s:n    , s:n)

" Vim config
exe XRFormat("vimMapModKey" , s:lblu , s:n    , s:n)
exe XRFormat("vimOption"    , s:blu  , s:n    , s:n)

" Make files
exe XRFormat("makeIdent"    , s:gre  , s:n    , s:n)
exe XRFormat("makeTarget"   , s:blu  , s:n    , s:b)
exe XRFormat("makeCommands" , s:a2   , s:n    , s:n)

" Spelling
exe XRFormat("SpellBad"     , s:red    , s:n , s:u)
exe XRFormat("SpellCap"     , s:lred    , s:n , s:u)
exe XRFormat("SpellRare"    , s:lyel    , s:n , s:u)

" Critic Markup
exe XRFormat("criticAddition"    , s:gre , s:n , s:i)
exe XRFormat("criticDeletion"    , s:red , s:n , s:i)

" Pandoc
exe XRFormat("pandocCiteAnchor"    , s:a1 , s:n , s:n)
exe XRFormat("pandocCiteKey"       , s:gre , s:n , s:n)
exe XRFormat("pandocAtxHeader"     , s:gre , s:n , s:b)
exe XRFormat("pandocEmphasis"      , s:lyel , s:n , s:i)
exe XRFormat("pandocStrong"        , s:lyel , s:n , s:b)
exe XRFormat("pandocBlockQuote"        , s:a1 , s:n , s:b)
exe XRFormat("pandocBlockMark"        , s:f2 , s:n , s:b)
exe XRFormat("pandocReferenceDefinition"  , s:lyel , s:n , s:n)
exe XRFormat("pandocReferenceLabel"  , s:lblu , s:n , s:i)
exe XRFormat("pandocPipeTableDelims", s:s1, s:n, s:n)
exe XRFormat("pandocPipeTableHeader", s:s1, s:n, s:n)
exe XRFormat("pandocTableHeaderWord", s:gre, s:n, s:b)

" Dev notes
exe XRFormat("Todo"     , s:yel , s:n , s:n)
exe XRFormat("Debug"    , s:cya , s:n , s:n)

" Mail
exe XRFormat("muttrcCommand"      , s:lblu, s:n , s:n)
exe XRFormat("mailHeaderEmail"    , s:a2  , s:n , s:n)
exe XRFormat("mailEmail"          , s:yel , s:n , s:n)
exe XRFormat("mailSignature"      , s:f1  , s:n , s:n)
exe XRFormat("mailSubject"        , s:yel , s:n , s:b)

"  }}}
