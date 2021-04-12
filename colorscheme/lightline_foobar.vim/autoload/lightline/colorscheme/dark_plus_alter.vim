" =============================================================================
" URL: https://github.com/sainnhe/lightline_foobar.vim/
" Filename: autoload/lightline/colorscheme/dark_plus_alter.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:dark = [ '#1e1e1e', 0 ]
let s:darker = [ '#303030', 0 ]
let s:darker2 = [ '#3a3a3a', 0 ]
let s:light = [ '#d4d4d4', 0 ]
let s:blue = [ '#569cd6', 0 ]
let s:green = [ '#608b4e', 0 ]
let s:magenta = [ '#c586c0', 0 ]
let s:red = [ '#d16969', 0 ]
let s:orange = [ '#ce9178', 0 ]
"}}}

"{{{Definition
let s:tab_l_fg = s:magenta
let s:tab_l_bg = s:darker2
let s:tab_r_fg = s:magenta
let s:tab_r_bg = s:darker2
let s:tab_sel_fg = s:dark
let s:tab_sel_bg = s:magenta
let s:tab_middle_fg = s:light
let s:tab_middle_bg = s:darker

let s:warningfg = s:dark
let s:warningbg = s:orange
let s:errorfg = s:dark
let s:errorbg = s:red

let s:normal_l1_fg = s:dark
let s:normal_l1_bg = s:magenta
let s:normal_l2_fg = s:magenta
let s:normal_l2_bg = s:darker
let s:normal_r1_fg = s:dark
let s:normal_r1_bg = s:green
let s:normal_r2_fg = s:green
let s:normal_r2_bg = s:darker
let s:normal_middle_fg = s:green
let s:normal_middle_bg = s:dark

let s:insert_l1_fg = s:dark
let s:insert_l1_bg = s:blue
let s:insert_l2_fg = s:blue
let s:insert_l2_bg = s:darker
let s:insert_r1_fg = s:dark
let s:insert_r1_bg = s:magenta
let s:insert_r2_fg = s:magenta
let s:insert_r2_bg = s:darker
let s:insert_middle_fg = s:magenta
let s:insert_middle_bg = s:dark

let s:visual_l1_fg = s:dark
let s:visual_l1_bg = s:red
let s:visual_l2_fg = s:red
let s:visual_l2_bg = s:darker
let s:visual_r1_fg = s:dark
let s:visual_r1_bg = s:red
let s:visual_r2_fg = s:red
let s:visual_r2_bg = s:darker
let s:visual_middle_fg = s:red
let s:visual_middle_bg = s:dark

let s:replace_l1_fg = s:dark
let s:replace_l1_bg = s:orange
let s:replace_l2_fg = s:orange
let s:replace_l2_bg = s:darker
let s:replace_r1_fg = s:dark
let s:replace_r1_bg = s:orange
let s:replace_r2_fg = s:orange
let s:replace_r2_bg = s:darker
let s:replace_middle_fg = s:orange
let s:replace_middle_bg = s:dark

let s:inactive_l1_fg = s:light
let s:inactive_l1_bg = s:darker
let s:inactive_l2_fg = s:light
let s:inactive_l2_bg = s:darker
let s:inactive_r1_fg = s:light
let s:inactive_r1_bg = s:darker
let s:inactive_r2_fg = s:light
let s:inactive_r2_bg = s:darker
let s:inactive_middle_fg = s:light
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

let g:lightline#colorscheme#dark_plus_alter#palette = lightline#colorscheme#flatten(s:p)

function! DarkPlusLightline2Magenta()
    let g:lightline#colorscheme#dark_plus_alter#palette.tabline.right[0] = g:lightline#colorscheme#dark_plus_alter#palette.normal.left[1]
    let g:lightline#colorscheme#dark_plus_alter#palette.tabline.left[0] = g:lightline#colorscheme#dark_plus_alter#palette.normal.left[1]
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

function! DarkPlusLightline2Blue()
    let g:lightline#colorscheme#dark_plus_alter#palette.tabline.right[0] = g:lightline#colorscheme#dark_plus_alter#palette.insert.left[1]
    let g:lightline#colorscheme#dark_plus_alter#palette.tabline.left[0] = g:lightline#colorscheme#dark_plus_alter#palette.insert.left[1]
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

augroup DarkPlusAu
    autocmd!
    autocmd InsertLeave * call DarkPlusLightline2Magenta()
    autocmd InsertEnter * call DarkPlusLightline2Blue()
augroup END
