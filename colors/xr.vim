" File:       xr.vim
" Maintainer: Timothée Poisot (tpoisot)
" URL:        https://github.com/tpoisot/jellybeans-Xresources.vim
" Modified:   28 Mar 2014 04:45 AM AEST
" License:    MIT

" Description:"{{{
" ----------------------------------------------------------------------------
" A closer implementation of jellybeans.vim for 256 colour terminals, compared
" with the CSApprox method.
"
" The colour palette and syntax highlighting scheme is taken from jellybeans
" https://github.com/nanotech/jellybeans.vim
"
" The code taken from solarized.vim
" https://github.com/altercation/vim-colors-solarized
"
" To use this colour scheme, you must append this to ~/.Xresources:
" https://github.com/w0ng/dotfiles/blob/master/.config/termcolours/jellybeans
"

"}}}
" Initialisation:"{{{
" ----------------------------------------------------------------------------
if has("gui_running") || &t_Co < 256
  finish
endif

"set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xr"

"}}}
" Cterm Palette:"{{{
" ----------------------------------------------------------------------------
  let s:background = "235"
  let s:window     = "236"
  let s:darkcolumn = "235"
  let s:addbg      = "0"
  let s:addfg      = "2"
  let s:changebg   = "0"
  let s:changefg   = "4"

  if &background == "dark"
   let s:foreground = "15"   " White
   let s:selection  = "0"    " DarkGrey
   let s:line       = "8"    " Black
   let s:comment    = "7"    " LightGrey
  else
   let s:foreground = "0"    " White
   let s:selection  = "15"   " DarkGrey
   let s:line       = "7"    " Black
   let s:comment    = "8"    " LightGrey
  endif
 
  let s:red        = "1"
  let s:lred       = "9"

  let s:green      = "2"
  let s:lgreen     = "10"

  let s:yellow     = "3"
  let s:lyellow    = "11"

  let s:blue       = "4"
  let s:lblue      = "12"

  let s:magenta    = "5"
  let s:lmagenta   = "13"

  let s:cyan       = "6"
  let s:lcyan      = "14"


"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
exe "let s:bg_none       = ' ctermbg=".s:none      ."'"
exe "let s:bg_foreground = ' ctermbg=".s:foreground."'"
exe "let s:bg_background = ' ctermbg=".s:background."'"
exe "let s:bg_selection  = ' ctermbg=".s:selection ."'"
exe "let s:bg_line       = ' ctermbg=".s:line      ."'"
exe "let s:bg_comment    = ' ctermbg=".s:comment   ."'"
exe "let s:bg_red        = ' ctermbg=".s:red       ."'"
exe "let s:bg_lred       = ' ctermbg=".s:lred      ."'"
exe "let s:bg_yellow     = ' ctermbg=".s:yellow    ."'"
exe "let s:bg_lyellow    = ' ctermbg=".s:lyellow   ."'"
exe "let s:bg_green      = ' ctermbg=".s:green     ."'"
exe "let s:bg_lgreen     = ' ctermbg=".s:lgreen    ."'"
exe "let s:bg_cyan       = ' ctermbg=".s:cyan      ."'"
exe "let s:bg_lcyan      = ' ctermbg=".s:lcyan     ."'"
exe "let s:bg_blue       = ' ctermbg=".s:blue      ."'"
exe "let s:bg_lblue      = ' ctermbg=".s:lblue     ."'"
exe "let s:bg_magenta    = ' ctermbg=".s:magenta   ."'"
exe "let s:bg_lmagenta   = ' ctermbg=".s:lmagenta  ."'"
exe "let s:bg_window     = ' ctermbg=".s:window    ."'"
exe "let s:bg_darkcolumn = ' ctermbg=".s:darkcolumn."'"
exe "let s:bg_addbg      = ' ctermbg=".s:addbg     ."'"
exe "let s:bg_addfg      = ' ctermbg=".s:selection ."'"
exe "let s:bg_changebg   = ' ctermbg=".s:selection ."'"
exe "let s:bg_changefg   = ' ctermbg=".s:blue      ."'"

exe "let s:fg_none       = ' ctermfg=".s:none      ."'"
exe "let s:fg_foreground = ' ctermfg=".s:foreground."'"
exe "let s:fg_background = ' ctermfg=".s:background."'"
exe "let s:fg_selection  = ' ctermfg=".s:selection ."'"
exe "let s:fg_line       = ' ctermfg=".s:line      ."'"
exe "let s:fg_comment    = ' ctermfg=".s:comment   ."'"
exe "let s:fg_red        = ' ctermfg=".s:red       ."'"
exe "let s:fg_lred       = ' ctermfg=".s:lred      ."'"
exe "let s:fg_yellow     = ' ctermfg=".s:yellow    ."'"
exe "let s:fg_lyellow    = ' ctermfg=".s:lyellow   ."'"
exe "let s:fg_green      = ' ctermfg=".s:green     ."'"
exe "let s:fg_lgreen     = ' ctermfg=".s:lgreen    ."'"
exe "let s:fg_cyan       = ' ctermfg=".s:cyan      ."'"
exe "let s:fg_lcyan      = ' ctermfg=".s:lcyan     ."'"
exe "let s:fg_blue       = ' ctermfg=".s:blue      ."'"
exe "let s:fg_lblue      = ' ctermfg=".s:lblue     ."'"
exe "let s:fg_magenta    = ' ctermfg=".s:magenta   ."'"
exe "let s:fg_lmagenta   = ' ctermfg=".s:lmagenta  ."'"
exe "let s:fg_window     = ' ctermfg=".s:window    ."'"
exe "let s:fg_darkcolumn = ' ctermfg=".s:darkcolumn."'"
exe "let s:fg_addbg      = ' ctermfg=".s:addbg     ."'"
exe "let s:fg_addfg      = ' ctermfg=".s:addfg     ."'"
exe "let s:fg_changebg   = ' ctermfg=".s:changebg  ."'"
exe "let s:fg_changefg   = ' ctermfg=".s:changefg  ."'"
exe "let s:fg_deletefg   = ' ctermfg=".s:red       ."'"

exe "let s:fmt_none      = ' cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold      = ' cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi      = ' cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr      = ' cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb      = ' cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi      = ' cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl      = ' cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital      = ' cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd      = ' cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr      = ' cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb      = ' cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

"}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"		Conceal"
"		Cursor"
"		CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_none        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_green       .s:bg_line        .s:fmt_none
exe "hi! DiffChange"    .s:fg_blue        .s:bg_line        .s:fmt_bold
exe "hi! DiffDelete"    .s:fg_red         .s:bg_line        .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_lgreen      .s:bg_selection   .s:fmt_ital
exe "hi! FoldColumn"    .s:fg_none        .s:bg_none        .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_none        .s:fmt_none
"		Incsearch"
exe "hi! LineNr"        .s:fg_line        .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_yellow      .s:bg_none        .s:fmt_bold
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_bold
exe "hi! MoreMsg"       .s:fg_blue        .s:bg_none        .s:fmt_bold
exe "hi! ErrorMsg"      .s:fg_red         .s:bg_none        .s:fmt_bold
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Normal"        .s:fg_none        .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_yellow      .s:bg_selection   .s:fmt_revr
"		PmenuSbar"
"		PmenuThumb"
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_foreground  .s:bg_lyellow     .s:fmt_bold
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellBad"      .s:fg_red         .s:bg_none        .s:fmt_curl
exe "hi! SpellCap"      .s:fg_blue        .s:bg_none        .s:fmt_curl
exe "hi! SpellLocal"    .s:fg_cyan        .s:bg_none        .s:fmt_curl
exe "hi! SpellRare"     .s:fg_magenta     .s:bg_none        .s:fmt_curl
exe "hi! StatusLine"    .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! StatusLineNC"  .s:fg_line        .s:bg_selection   .s:fmt_none
exe "hi! TabLine"       .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
"		TabLineFill"
"		TabLineSel"
exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"		VisualNos"
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
"		WildMenu"


"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Boolean"         .s:fg_blue        .s:bg_none        .s:fmt_bold
"		Character"
"		Number"
"		Float"

exe "hi! Identifier"      .s:fg_magenta     .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fmt_none

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! Conditional"     .s:fg_magenta     .s:bg_none        .s:fmt_none
exe "hi! Repeat"          .s:fg_lmagenta    .s:bg_none        .s:fmt_none
"		Label"
exe "hi! Operator"        .s:fg_cyan        .s:bg_none        .s:fmt_none
exe "hi! Exception"       .s:fg_red         .s:bg_none        .s:fmt_bold
"		Keyword"

exe "hi! PreProc"         .s:fg_cyan        .s:bg_none        .s:fmt_none
"		Include"
"		Define"
"		Macro"
"		PreCondit"

exe "hi! Type"            .s:fg_lyellow      .s:bg_none        .s:fmt_none
"		StorageClass"
exe "hi! Structure"       .s:fg_lcyan        .s:bg_none        .s:fmt_none
"		Typedef"

exe "hi! Special"         .s:fg_lblue        .s:bg_none        .s:fmt_none
exe "hi! Delimiter"       .s:fg_lred         .s:bg_none        .s:fmt_none
exe "hi! SpecialChar"     .s:fg_magenta      .s:bg_none        .s:fmt_none
"		SpecialChar"
"		Tag"
"		SpecialComment"
"		Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_red         .s:bg_none        .s:fmt_undr

exe "hi! Todo"            .s:fg_lyellow     .s:bg_none        .s:fmt_bold
exe "hi! Debug"           .s:fg_lblue       .s:bg_none        .s:fmt_bold

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"		diffOldFile
"		diffNewFile
"		diffFile
"		diffOnly
"		diffIdentical
"		diffDiffer
"		diffBDiffer
"		diffIsA
"		diffNoEOL
"		diffCommon
hi! link diffRemoved Constant
"		diffChanged
hi! link diffAdded Special
"		diffLine
"		diffSubname
"		diffComment

"}}}
" Custom Syntax Highlighting: "{{{

exe "hi! SignifySignAdd"       .s:fg_green         .s:bg_none        .s:fmt_none
exe "hi! SignifySignChange"    .s:fg_blue          .s:bg_none        .s:fmt_none
exe "hi! SignifySignDelete"    .s:fg_red           .s:bg_none        .s:fmt_none

exe "hi! GitGutterAdd"            .s:fg_lgreen         .s:bg_none        .s:fmt_bold
exe "hi! GitGutterChange"         .s:fg_lblue          .s:bg_none        .s:fmt_bold
exe "hi! GitGutterDelete"         .s:fg_lred           .s:bg_none        .s:fmt_bold
exe "hi! GitGutterChangeDelete"   .s:fg_lmagenta       .s:bg_none        .s:fmt_bold

exe "hi! pandocBlockQuote"     .s:fg_cyan          .s:bg_none        .s:fmt_none
exe "hi! pandocAtxHeader"      .s:fg_green         .s:bg_none        .s:fmt_bold

exe "hi! Conceal"              .s:fg_yellow        .s:bg_none        .s:fmt_none

" pandoc "{{{
exe "hi! pandocReferenceLabel"                 .s:fg_lyellow      .s:bg_none        .s:fmt_none
exe "hi! pandocReferenceDefinitionLabel"       .s:fg_lyellow      .s:bg_none        .s:fmt_none
exe "hi! pandocReferenceURL"                   .s:fg_comment      .s:bg_none        .s:fmt_none
exe "hi! pandocReferenceDefinitionAddress"     .s:fg_comment      .s:bg_none        .s:fmt_none

exe "hi! pandocAtxHeader"                      .s:fg_blue         .s:bg_none        .s:fmt_bold

exe "hi! pandocCiteKey"                        .s:fg_green        .s:bg_none        .s:fmt_none
exe "hi! pandocCiteAnchor"                     .s:fg_blue         .s:bg_none        .s:fmt_none

exe "hi! pandocStrong"                         .s:fg_none         .s:bg_none        .s:fmt_bold
exe "hi! pandocEmphasis"                       .s:fg_none         .s:bg_none        .s:fmt_ital

exe "hi! criticAddition"                       .s:fg_green        .s:bg_none        .s:fmt_bold
exe "hi! criticDeletion"                       .s:fg_red          .s:bg_none        .s:fmt_bold
exe "hi! criticComment"                        .s:fg_magenta      .s:bg_none        .s:fmt_bold
exe "hi! criticHighlight"                      .s:fg_yellow       .s:bg_none        .s:fmt_bold
"}}}

exe "hi! juliaRepeat"          .s:fg_yellow        .s:bg_none        .s:fmt_none
exe "hi! juliaBlKeyword"       .s:fg_cyan          .s:bg_none        .s:fmt_none

" R "{{{
exe "hi! rDelimiter"       .s:fg_magenta           .s:bg_none        .s:fmt_none
exe "hi! rDollar"          .s:fg_yellow           .s:bg_none        .s:fmt_none
" }}}

exe "hi! Todo"          .s:fg_yellow           .s:bg_none        .s:fmt_bold
exe "hi! Debug"         .s:fg_blue             .s:bg_none        .s:fmt_bold

exe "hi! CSVColumnEven"       .s:fg_blue             .s:bg_selection   .s:fmt_none
exe "hi! CSVColumnHeaderEven" .s:fg_blue             .s:bg_selection   .s:fmt_bold
exe "hi! CSVColumnOdd"        .s:fg_magenta          .s:bg_selection   .s:fmt_none
exe "hi! CSVColumnHeaderOdd"  .s:fg_magenta          .s:bg_selection   .s:fmt_bold

" mailcap "{{{
exe "hi! mailcapTypeField"         .s:fg_blue             .s:bg_none        .s:fmt_bold
exe "hi! mailcapSpecial"           .s:fg_magenta          .s:bg_none        .s:fmt_bold
exe "hi! mailcapDelimiter"         .s:fg_comment          .s:bg_none        .s:fmt_none
" }}}

" Makefile "{{{
exe "hi! makeCommands"         .s:fg_none             .s:bg_none        .s:fmt_none
exe "hi! makeTarget"           .s:fg_blue             .s:bg_none        .s:fmt_bold
" }}}

" }}}
" Legal:"{{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}
