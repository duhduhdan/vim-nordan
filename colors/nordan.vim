"
"    .-.                                                   \ /
"   ( (                                |                  - * -
"    '-`                              -+-                  / \
"             \            o          _|_          \
"             ))          }^{        /___\         ))
"           .-#-----.     /|\     .---'-'---.    .-#-----.
"      ___ /_________\   //|\\   /___________\  /_________\
"     /___\ |[] _ []|    //|\\    | A /^\ A |    |[] _ []|
" ....|"#"|.|  |*|  |...///|\\\...|   |"|   |....|  |*|  |.........
"
"
" Nordan - Arctic nights color scheme
" Author: Dan Loudon
" License: MIT
" Version: 0.1.0
"
" Based off the Nord palette from arcticicestudio
" https://github.com/arcticicestudio/nord
"

highlight clear
syntax reset

set background=dark
let g:colors_name = 'nordan'

if !exists('g:nordan_italics')
  let g:nordan_italics = 0
endif

" ===  Polar Night  =========
let s:nord0 = ['#2E3440', 234]
let s:nord1 = ['#3B4252', 235]
let s:nord2 = ['#434C5E', 236]
let s:nord3 = ['#4C566A', 237]

" ===  Snow Storm  =========
let s:nord4 = ['#D8DEE9', 251]
let s:nord5 = ['#E5E9F0', 253]
let s:nord6 = ['#ECEFF4', 254]

" ===  Frost  =========
let s:nord7 = ['#8FBCBB', 044]
let s:nord8 = ['#88C0D0', 045]
let s:nord9 = ['#81A1C1', 111]
let s:nord10 = ['#5E81AC', 032]

" ===  Aurora  =========
let s:nord11 = ['#BF616A', 167]
let s:nord12 = ['#D08770', 173]
let s:nord13 = ['#EBCB8B', 179]
let s:nord14 = ['#A3BE8C', 107]
let s:nord15 = ['#B48EAD', 133]

function! s:HL(group, fg, bg, attr)
  let l:attr = a:attr
  if g:nordan_italics == 0 && l:attr ==? 'italic'
    let l:attr = 'none'
  endif

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  endif

  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  endif

  if l:attr != ''
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun

" ===  Editor  =========
call s:HL('ColumnColor',              '',         s:nord6,   '')
call s:HL('Cursor',                   s:nord3,    s:nord5,   '')
call s:HL('CursorColumn',             '',         s:nord4,   '')
call s:HL('CursorLine',               '',         s:nord4,   'none')
call s:HL('Directory',                s:nord9,    '',        '')
call s:HL('DiffAdd',                  s:nord5,    s:nord14,  'none')
call s:HL('DiffChange',               s:nord5,    s:nord13,  'none')
call s:HL('DiffDelete',               s:nord5,    s:nord11,  'none')
call s:HL('DiffText',                 s:nord5,    s:nord10,  'none')
call s:HL('ErrorMsg',                 s:nord11    s:nord4,   'bold')
call s:HL('VertSplit',                s:nord3,    s:nord2,   'none')
call s:HL('Folded',                   s:nord4,    s:nord2,   '')
call s:HL('FoldColumn',               s:nord8,    s:nord2,   '')
call s:HL('SignColumn',               s:nord4,    s:nord2,   '')
call s:HL('LineNr',                   s:nord4,    '',        '')
call s:HL('CursorLineNr',             s:nord4,    s:nord3,   'none')
call s:HL('MatchParen',               s:nord3,    s:nord7,   'bold')
call s:HL('ModeMsg',                  s:nord10,   '',        '')
call s:HL('MoreMsg',                  s:nord10,   '',        '')
call s:HL('NonText',                  s:nord5,    '',        '')
call s:HL('Normal',                   s:nord4,    s:nord2,   'none')
call s:HL('Pmenu',                    s:nord3,    s:nord4,   '')
call s:HL('PmenulSel',                s:nord3,    s:nord9,   '')
call s:HL('PmenuSbar',                s:nord4,    s:nord1,   '')
call s:HL('PmenuThumb',               s:nord2,    s:nord3,   '')
call s:HL('Question',                 s:nord7,    '',        '')
call s:HL('Search',                   s:nord2,    s:nord13,  '')
call s:HL('SpecialKey',               s:nord3,    '',        '')
call s:HL('SpellCap',                 s:nord10,   '',        'undercurl')
call s:HL('SpellBad',                 s:nord11,   '',        'undercurl')
call s:HL('StatusLine',               s:nord5,    s:nord3,   'none')
call s:HL('StatusLineNC',             s:nord2,    s:nord4,   '')
call s:HL('TabLine',                  s:nord2,    s:nord3,   'none')
call s:HL('TabLineFill',              s:nord3,    s:nord4,   'none')
call s:HL('TabLineSel',               s:nord4,    s:nord3,   '')
call s:HL('Title',                    s:nord13,   '',        'none')
call s:HL('Visual',                   s:nord4,    s:nord9,   '')
call s:HL('WarningMsg',               s:nord11,   '',        '')
call s:HL('WildMenu',                 s:nord2,    s:nord10,  '')

" ===  Syntax  =========
call s:HL('Character',                s:nord13,   '',   '')
call s:HL('Comment',                  s:nord3,    '',   'italic')
call s:HL('Constant',                 s:nord7,    '',   '')
call s:HL('Define',                   s:nord10,   '',   '')
call s:HL('Error',                    s:nord11,   '',   'bold')
call s:HL('Function',                 s:nord8,    '',   '')
call s:HL('Identifier',               s:nord4,    '',   '')
call s:HL('Macro',                    s:nord10,   '',   '')
call s:HL('Operator',                 s:nord9,    '',   '')
call s:HL('PreProc',                  s:nord10,   '',   '')
call s:HL('Special',                  s:nord7,    '',   '')
call s:HL('Statement',                s:nord9,    '',   '')
call s:HL('StorageClass',             s:nord14,   '',   '')
call s:HL('String',                   s:nord14,   '',   '')
call s:HL('Structure',                s:nord7,    '',   '')
call s:HL('Todo',                     s:nord15,   '',   'bold')
call s:HL('Type',                     s:nord7,    '',   '')
call s:HL('Underlined',               s:nord7,    '',   'none')

" ===  CSS  =========
call s:HL('cssAttrComma',             s:nord7,    '',   '')
call s:HL('cssAttributeSelector',     s:nord7,    '',   '')
call s:HL('cssBraces',                s:nord7,    '',   '')
call s:HL('cssClassName',             s:nord7,    '',   '')
call s:HL('cssClassNameDot',          s:nord7,    '',   '')
call s:HL('cssIdentifier',            s:nord7,    '',   '')
call s:HL('cssImportant',             s:nord7,    '',   '')
call s:HL('cssMediaType',             s:nord7,    '',   '')
call s:HL('cssProp',                  s:nord7,    '',   '')
call s:HL('cssSelectorOp',            s:nord7,    '',   '')
call s:HL('cssSelectorOp2',           s:nord7,    '',   '')

" ===  Sass  =========
call s:HL('sassAmpersand',            s:nord7,    '',   '')
call s:HL('sassClass',                s:nord7,    '',   '')
call s:HL('sassClassChar',            s:nord7,    '',   '')

" ===  Less  =========
call s:HL('lessAmpersand',            s:nord7,    '',   '')
call s:HL('lessClass',                s:nord7,    '',   '')
call s:HL('lessClassChar',            s:nord7,    '',   '')
call s:HL('lessFunction',             s:nord7,    '',   '')
call s:HL('lessCssAttribute',         s:nord7,    '',   '')

" ===  HTML  =========
call s:HL('htmlArg',                  s:nord7,    '',   '')
call s:HL('htmlEndTag',               s:nord7,    '',   '')
call s:HL('htmlTag',                  s:nord7,    '',   '')
call s:HL('htmlTagName',              s:nord7,    '',   '')
call s:HL('htmlTitle',                s:nord7,    '',   '')

" ===  Javascript  =========
call s:HL('javaScriptBraces',         s:nord7,    '',   '')
call s:HL('javaScriptIdentifier',     s:nord7,    '',   '')
call s:HL('javaScriptFunction',       s:nord7,    '',   '')
call s:HL('javaScriptNumber',         s:nord7,    '',   '')
call s:HL('javaScriptReserved',       s:nord7,    '',   '')
call s:HL('javaScriptRequire',        s:nord7,    '',   '')
call s:HL('javaScriptNull',           s:nord7,    '',   '')

" ===  NERDTree  =========
call s:HL('NERDTreeCWD',              s:nord7,    '',   '')
call s:HL('NERDTreeExecFile',         s:nord7,    '',   '')
call s:HL('NERDTreeLinkDir',          s:nord7,    '',   '')
call s:HL('NERDTreeLinkFile',         s:nord7,    '',   '')
call s:HL('NERDTreeLinkTarget',       s:nord7,    '',   '')

