hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "clean"

    let s:vmode       = "cterm"
    let s:light3      = "231"
    let s:light2      = "255"
    let s:light1      = "246"
    let s:light0      = "242"
    let s:dark0       = "239"
    let s:dark1       = "237"
    let s:dark2       = "236"
    let s:dark3       = "235"
    let s:yellow      = "136"
    let s:orange      = "166"
    let s:red         = "167"
    let s:magenta     = "125"
    let s:violet      = "105"
    let s:blue        = "26"
    let s:brown        = "94"
    let s:green       = "64"
" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
    let s:none            = "NONE"
    let s:c               = ",undercurl"
    let s:r               = ",reverse"
    let s:s               = ",standout"
"}}}
let s:back = s:light3
let s:b           = ",bold"
let s:u           = ",underline"
let s:i           = ",italic"

"}}}
" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none      = ' ".s:vmode."bg=".s:none   ."'"
exe "let s:bg_back      = ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_light3    = ' ".s:vmode."bg=".s:light3 ."'"
exe "let s:bg_light2    = ' ".s:vmode."bg=".s:light2 ."'"
exe "let s:bg_light1    = ' ".s:vmode."bg=".s:light1 ."'"
exe "let s:bg_light0    = ' ".s:vmode."bg=".s:light0 ."'"
exe "let s:bg_dark0     = ' ".s:vmode."bg=".s:dark0  ."'"
exe "let s:bg_dark1     = ' ".s:vmode."bg=".s:dark1  ."'"
exe "let s:bg_dark2     = ' ".s:vmode."bg=".s:dark2  ."'"
exe "let s:bg_dark3     = ' ".s:vmode."bg=".s:dark3  ."'"
exe "let s:bg_green     = ' ".s:vmode."bg=".s:green  ."'"
exe "let s:bg_yellow    = ' ".s:vmode."bg=".s:yellow ."'"
exe "let s:bg_orange    = ' ".s:vmode."bg=".s:orange ."'"
exe "let s:bg_red       = ' ".s:vmode."bg=".s:red    ."'"
exe "let s:bg_magenta   = ' ".s:vmode."bg=".s:magenta."'"
exe "let s:bg_violet    = ' ".s:vmode."bg=".s:violet ."'"
exe "let s:bg_blue      = ' ".s:vmode."bg=".s:blue   ."'"
exe "let s:bg_brown      = ' ".s:vmode."bg=".s:brown   ."'"

exe "let s:fg_none      = ' ".s:vmode."fg=".s:none   ."'"
exe "let s:fg_back      = ' ".s:vmode."fg=".s:back   ."'"
exe "let s:fg_light3    = ' ".s:vmode."fg=".s:light3 ."'"
exe "let s:fg_light2    = ' ".s:vmode."fg=".s:light2 ."'"
exe "let s:fg_light1    = ' ".s:vmode."fg=".s:light1 ."'"
exe "let s:fg_light0    = ' ".s:vmode."fg=".s:light0 ."'"
exe "let s:fg_dark0     = ' ".s:vmode."fg=".s:dark0  ."'"
exe "let s:fg_dark1     = ' ".s:vmode."fg=".s:dark1  ."'"
exe "let s:fg_dark2     = ' ".s:vmode."fg=".s:dark2  ."'"
exe "let s:fg_dark3     = ' ".s:vmode."fg=".s:dark3  ."'"
exe "let s:fg_green     = ' ".s:vmode."fg=".s:green  ."'"
exe "let s:fg_yellow    = ' ".s:vmode."fg=".s:yellow ."'"
exe "let s:fg_orange    = ' ".s:vmode."fg=".s:orange ."'"
exe "let s:fg_red       = ' ".s:vmode."fg=".s:red    ."'"
exe "let s:fg_magenta   = ' ".s:vmode."fg=".s:magenta."'"
exe "let s:fg_violet    = ' ".s:vmode."fg=".s:violet ."'"
exe "let s:fg_blue      = ' ".s:vmode."fg=".s:blue   ."'"
exe "let s:fg_brown      = ' ".s:vmode."fg=".s:brown   ."'"

exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_undb     = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_ital     = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i."'"
exe "let s:fmt_itul     = ' ".s:vmode."=NONE".s:i.s:u.      " term=NONE".s:i.s:u."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"
exe "let s:fmt_revr     = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r."'"
exe "let s:fmt_revb     = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"
exe "let s:fmt_revu   = ' ".s:vmode."=NONE".s:r.s:u." term=NONE".s:r.s:u."'"

if has("gui_running")
    exe "let s:sp_none      = ' guisp=".s:none   ."'"
    exe "let s:sp_back      = ' guisp=".s:back   ."'"
    exe "let s:sp_light3    = ' guisp=".s:light3 ."'"
    exe "let s:sp_light2    = ' guisp=".s:light2 ."'"
    exe "let s:sp_light1    = ' guisp=".s:light1 ."'"
    exe "let s:sp_light0    = ' guisp=".s:light0 ."'"
    exe "let s:sp_dark0     = ' guisp=".s:dark0  ."'"
    exe "let s:sp_dark1     = ' guisp=".s:dark1  ."'"
    exe "let s:sp_dark2     = ' guisp=".s:dark2  ."'"
    exe "let s:sp_dark3     = ' guisp=".s:dark3  ."'"
    exe "let s:sp_green     = ' guisp=".s:green  ."'"
    exe "let s:sp_yellow    = ' guisp=".s:yellow ."'"
    exe "let s:sp_orange    = ' guisp=".s:orange ."'"
    exe "let s:sp_red       = ' guisp=".s:red    ."'"
    exe "let s:sp_magenta   = ' guisp=".s:magenta."'"
    exe "let s:sp_violet    = ' guisp=".s:violet ."'"
    exe "let s:sp_blue      = ' guisp=".s:blue   ."'"
    exe "let s:sp_brown      = ' guisp=".s:brown   ."'"
else
    let s:sp_none      = ""
    let s:sp_back      = ""
    let s:sp_light3    = ""
    let s:sp_light2    = ""
    let s:sp_light1    = ""
    let s:sp_light0    = ""
    let s:sp_dark0     = ""
    let s:sp_dark1     = ""
    let s:sp_dark2     = ""
    let s:sp_dark3     = ""
    let s:sp_green     = ""
    let s:sp_yellow    = ""
    let s:sp_orange    = ""
    let s:sp_red       = ""
    let s:sp_magenta   = ""
    let s:sp_violet    = ""
    let s:sp_blue      = ""
    let s:sp_brown      = ""
endif

"}}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi! Normal"         .s:fmt_none   .s:fg_dark1  .s:bg_back

exe "hi! Comment"        .s:fmt_ital   .s:fg_light1 .s:bg_none
"       *Comment         any comment

exe "hi! Constant"       .s:fmt_none  .s:fg_red .s:bg_none
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! Identifier"     .s:fmt_ital   .s:fg_dark3   .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:fmt_bold   .s:fg_dark0  .s:bg_none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

exe "hi! PreProc"        .s:fmt_none   .s:fg_light0 .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.
hi link javaAnnotation Comment
hi link javaCommentTitle Comment
hi link javaDocTags Comment
exe "hi! javaDocParam"   .s:fmt_none   .s:fg_dark0 .s:bg_none

exe "hi! Type"      .s:fmt_itul   .s:fg_light0  .s:bg_none
exe "hi! StorageClass"           .s:fmt_none   .s:fg_light1 .s:bg_none
exe "hi! Structure"           .s:fmt_none   .s:fg_light0 .s:bg_none
hi link Typedef Structure
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:fmt_none   .s:fg_violet    .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Underlined"     .s:fmt_undr   .s:fg_none .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! SpecialKey" .s:fmt_bold   .s:fg_light0 .s:bg_light2
exe "hi! NonText"    .s:fmt_bold   .s:fg_light0 .s:bg_none
exe "hi! StatusLine"     .s:fmt_none   .s:fg_dark1  .s:bg_none
exe "hi! StatusLineNC"   .s:fmt_none   .s:fg_light0 .s:bg_none
exe "hi! Visual"         .s:fmt_none   .s:fg_dark3 .s:bg_light2
exe "hi! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! ErrorMsg"       .s:fmt_revr   .s:fg_red    .s:bg_none
exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
exe "hi! Search"         .s:fmt_revr   .s:fg_yellow .s:bg_none
exe "hi! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
hi! link ModeMsg Comment
exe "hi! LineNr"         .s:fmt_none   .s:fg_light1 .s:bg_light2
exe "hi! Question"       .s:fmt_bold   .s:fg_brown   .s:bg_none
exe "hi! VertSplit"  .s:fmt_none   .s:fg_light2 .s:bg_light2
exe "hi! Title"          .s:fmt_bold   .s:fg_orange .s:bg_none
exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_light2 .s:fmt_revb
exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! WildMenu"       .s:fmt_none   .s:fg_dark2  .s:bg_light2 .s:fmt_revb
exe "hi! Folded"         .s:fmt_undb   .s:fg_dark0  .s:bg_light2  .s:sp_light3
exe "hi! FoldColumn"     .s:fmt_none   .s:fg_dark0  .s:bg_light2
exe "hi! SignColumn"     .s:fmt_none   .s:fg_dark0
exe "hi! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! Pmenu"          .s:fmt_none   .s:fg_dark1  .s:bg_light2
exe "hi! PmenuSel"       .s:fmt_none   .s:fg_light2 .s:bg_light0
exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_dark2  .s:bg_dark0   .s:fmt_revb
exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_dark0  .s:bg_light3  .s:fmt_revb
exe "hi! TabLine"        .s:fmt_undr   .s:fg_dark0  .s:bg_light2  .s:sp_dark0
exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_dark0  .s:bg_light2  .s:sp_dark0
exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_light1 .s:bg_dark2   .s:sp_dark0  .s:fmt_revu
exe "hi! CursorLine"     .s:fmt_none   .s:fg_none   .s:bg_light2  .s:sp_dark1
exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_light2
exe "hi! Cursor"         .s:fmt_none   .s:fg_light3 .s:bg_dark0
hi! link lCursor Cursor
exe "hi! MatchParen"     .s:fmt_none   .s:fg_light2    .s:bg_light0

"}}}
" html highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! htmlTag"           .s:fmt_none .s:fg_light1 .s:bg_none
exe "hi! htmlEndTag"        .s:fmt_none .s:fg_light1 .s:bg_none
hi link htmlTagN htmlTag
exe "hi! htmlTagName"       .s:fmt_bold .s:fg_light0  .s:bg_none
hi link htmlSpecialTagName htmlTagName
exe "hi! htmlArg"           .s:fmt_none .s:fg_light0 .s:bg_none
exe "hi! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none
"}}}
"
hi link vimOption Identifier
