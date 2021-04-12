" =============================================================================
" URL: https://github.com/sainnhe/lightline_foobar.vim/
" Filename: autoload/lightline/colorscheme/sacredforest_alter.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:dark      = [ '#3c4c55', 239 ]
let s:darker      = [ '#4c5866', 240 ]
let s:gray       = [ '#556873', 242 ]
let s:blue       = [ '#7fc1ca', 110 ]
let s:red       = [ '#fd8489', 174 ]
let s:green       = [ '#a9dd9d', 150 ]
let s:orange       = [ '#fb8965', 216 ]
let s:golden = [ '#FFEBC3', 223 ]
"}}}

"{{{Definition
let s:tab_l_fg = s:golden
let s:tab_l_bg = s:gray
let s:tab_r_fg = s:golden
let s:tab_r_bg = s:gray
let s:tab_sel_fg = s:darker
let s:tab_sel_bg = s:green
let s:tab_middle_fg = s:golden
let s:tab_middle_bg = s:darker

let s:warningfg = s:orange
let s:warningbg = s:darker
let s:errorfg = s:red
let s:errorbg = s:darker

let s:normal_l1_fg = s:darker
let s:normal_l1_bg = s:green
let s:normal_l2_fg = s:golden
let s:normal_l2_bg = s:darker
let s:normal_r1_fg = s:darker
let s:normal_r1_bg = s:green
let s:normal_r2_fg = s:golden
let s:normal_r2_bg = s:darker
let s:normal_middle_fg = s:golden
let s:normal_middle_bg = s:dark

let s:insert_l1_fg = s:golden
let s:insert_l1_bg = s:gray
let s:insert_l2_fg = s:golden
let s:insert_l2_bg = s:darker
let s:insert_r1_fg = s:darker
let s:insert_r1_bg = s:green
let s:insert_r2_fg = s:golden
let s:insert_r2_bg = s:darker
let s:insert_middle_fg = s:golden
let s:insert_middle_bg = s:dark

let s:visual_l1_fg = s:darker
let s:visual_l1_bg = s:blue
let s:visual_l2_fg = s:golden
let s:visual_l2_bg = s:darker
let s:visual_r1_fg = s:darker
let s:visual_r1_bg = s:blue
let s:visual_r2_fg = s:golden
let s:visual_r2_bg = s:darker
let s:visual_middle_fg = s:golden
let s:visual_middle_bg = s:dark

let s:replace_l1_fg = s:darker
let s:replace_l1_bg = s:orange
let s:replace_l2_fg = s:golden
let s:replace_l2_bg = s:darker
let s:replace_r1_fg = s:darker
let s:replace_r1_bg = s:orange
let s:replace_r2_fg = s:golden
let s:replace_r2_bg = s:darker
let s:replace_middle_fg = s:golden
let s:replace_middle_bg = s:dark

let s:inactive_l1_fg = s:golden
let s:inactive_l1_bg = s:darker
let s:inactive_l2_fg = s:golden
let s:inactive_l2_bg = s:darker
let s:inactive_r1_fg = s:golden
let s:inactive_r1_bg = s:darker
let s:inactive_r2_fg = s:golden
let s:inactive_r2_bg = s:darker
let s:inactive_middle_fg = s:golden
let s:inactive_middle_bg = s:dark
"}}}

"{{{Implementation
let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
let s:p.normal.middle = [ [ s:normal_middle_fg, s:normal_middle_bg ] ]
let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg ], [ s:normal_r2_fg, s:normal_r2_bg ] ]

let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
let s:p.insert.middle = [ [ s:insert_middle_fg, s:insert_middle_bg ] ]
let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg ], [ s:insert_r2_fg, s:insert_r2_bg ] ]

let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
let s:p.visual.middle = [ [ s:visual_middle_fg, s:visual_middle_bg ] ]
let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg ], [ s:visual_r2_fg, s:visual_r2_bg ] ]

let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
let s:p.replace.middle = [ [ s:replace_middle_fg, s:replace_middle_bg ] ]
let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg ], [ s:replace_r2_fg, s:replace_r2_bg ] ]

let s:p.inactive.left = [ [ s:inactive_l1_fg, s:inactive_l1_bg ], [ s:inactive_l2_fg, s:inactive_l2_bg ] ]
let s:p.inactive.middle = [ [ s:inactive_middle_fg, s:inactive_middle_bg ] ]
let s:p.inactive.right = [ [ s:inactive_r1_fg, s:inactive_r1_bg ], [ s:inactive_r2_fg, s:inactive_r2_bg ] ]

let s:p.tabline.left = [ [ s:tab_l_fg, s:tab_l_bg] ]
let s:p.tabline.right = [ [ s:tab_r_fg, s:tab_r_bg] ]
let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg ] ]
let s:p.tabline.middle = [ [ s:tab_middle_fg, s:tab_middle_bg] ]

let s:p.normal.error = [ [ s:errorfg, s:errorbg ] ]
let s:p.normal.warning = [ [ s:warningfg, s:warningbg ] ]


if exists('g:lightline_foobar_bold')
    if g:lightline_foobar_bold == 1
        let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg, 'bold' ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
        let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg, 'bold' ], [ s:normal_r2_fg, s:normal_r2_bg ] ]
        let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg, 'bold' ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
        let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg, 'bold' ], [ s:insert_r2_fg, s:insert_r2_bg ] ]
        let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg, 'bold' ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
        let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg, 'bold' ], [ s:visual_r2_fg, s:visual_r2_bg ] ]
        let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg, 'bold' ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
        let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg, 'bold' ], [ s:replace_r2_fg, s:replace_r2_bg ] ]
        let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg, 'bold' ] ]
    endif
endif
"}}}

let g:lightline#colorscheme#sacredforest_alter#palette = lightline#colorscheme#flatten(s:p)
