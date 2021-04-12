
let config_dir = "/home/tom/.config/nvim"



" ==================
" Basic
let basic_config = join(["source ", config_dir, "/basic.vim"], "")
execute basic_config



" ==================
" File Type
" Note: Nvim will autoload configuration named filetype.vim
let file_config = join(["source ", config_dir,  "/file.vim"], "")
execute file_config


" ==================
" Plugin
let plugin_config = join(["source ", config_dir, "/plug.vim"], "")
execute plugin_config



" Status Line

"source ./line.vim


" ==================
" Keyboard Mapping
let mapping_config = join(["source ", config_dir, "/mapping.vim"], "")
execute mapping_config




