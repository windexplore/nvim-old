" =============================================================================
" URL: https://github.com/sainnhe/lightline_foobar.vim/
" Filename: autoload/lightline/colorscheme/softera_alter.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:base0 = [ '#eceafa', 255 ]
let s:base1 = [ '#cfc8f4', 189 ]
let s:base2 = [ '#b4addf', 146 ]
let s:base3 = [ '#a29acb', 140 ]
let s:red = [ '#dd698c', 168 ]
let s:red_alt = [ '#eeaabe', 217 ]
"}}}

"{{{Definition
let s:tab_l_fg = s:base3
let s:tab_l_bg = s:base1
let s:tab_r_fg = s:base3
let s:tab_r_bg = s:base1
let s:tab_sel_fg = s:base0
let s:tab_sel_bg = s:base2
let s:tab_middle_fg = s:base2
let s:tab_middle_bg = s:base0

let s:warningfg = s:red_alt
let s:warningbg = s:base1
let s:errorfg = s:red
let s:errorbg = s:base1

let s:normal_l1_fg = s:base0
let s:normal_l1_bg = s:base2
let s:normal_l2_fg = s:base3
let s:normal_l2_bg = s:base1
let s:normal_r1_fg = s:base0
let s:normal_r1_bg = s:base2
let s:normal_r2_fg = s:base3
let s:normal_r2_bg = s:base1
let s:normal_middle_fg = s:base2
let s:normal_middle_bg = s:base0

let s:insert_l1_fg = s:base0
let s:insert_l1_bg = s:base2
let s:insert_l2_fg = s:base3
let s:insert_l2_bg = s:base1
let s:insert_r1_fg = s:base0
let s:insert_r1_bg = s:base2
let s:insert_r2_fg = s:base3
let s:insert_r2_bg = s:base1
let s:insert_middle_fg = s:base2
let s:insert_middle_bg = s:base0

let s:visual_l1_fg = s:base0
let s:visual_l1_bg = s:base2
let s:visual_l2_fg = s:base3
let s:visual_l2_bg = s:base1
let s:visual_r1_fg = s:base0
let s:visual_r1_bg = s:base2
let s:visual_r2_fg = s:base3
let s:visual_r2_bg = s:base1
let s:visual_middle_fg = s:base2
let s:visual_middle_bg = s:base0

let s:replace_l1_fg = s:base0
let s:replace_l1_bg = s:base2
let s:replace_l2_fg = s:base3
let s:replace_l2_bg = s:base1
let s:replace_r1_fg = s:base0
let s:replace_r1_bg = s:base2
let s:replace_r2_fg = s:base3
let s:replace_r2_bg = s:base1
let s:replace_middle_fg = s:base2
let s:replace_middle_bg = s:base0

let s:inactive_l1_fg = s:base3
let s:inactive_l1_bg = s:base1
let s:inactive_l2_fg = s:base3
let s:inactive_l2_bg = s:base1
let s:inactive_r1_fg = s:base3
let s:inactive_r1_bg = s:base1
let s:inactive_r2_fg = s:base3
let s:inactive_r2_bg = s:base1
let s:inactive_middle_fg = s:base2
let s:inactive_middle_bg = s:base0
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

let g:lightline#colorscheme#softera_alter#palette = lightline#colorscheme#flatten(s:p)
