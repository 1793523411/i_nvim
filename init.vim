"? new
" Packer插件管理
lua require('plugins')
lua require('keybindings')
lua require('plugins/lspconfig')
lua require('plugins/neo-tree') 
lua require('plugins/treesitter') 

lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')

set background=dark
colorscheme zephyr

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'