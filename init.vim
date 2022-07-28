"? new
" Packer插件管理
lua require('plugins')
lua require('keybindings')
lua require('plugins/lspconfig')
lua require('plugins/neo-tree') 
lua require('plugins/treesitter') 
lua require('plugins/cmp') 

lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/markdown-preview')
lua require('plugin-config/vim-floaterm')
lua require('plugin-config/lualine')

set background=dark
colorscheme zephyr

call plug#begin()
" https://github.com/vim-airline/vim-airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" https://github.com/preservim/nerdcommenter
" Plug 'preservim/nerdcommenter'
call plug#end()

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'