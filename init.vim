"? new
lua require('basic')
lua require('colorscheme')
" Packer插件管理
lua require('plugins')
lua require('keybindings')
" -- lua require('plugins/lspconfig')
lua require('plugins/neo-tree') 
lua require('plugins/treesitter') 
" -- lua require('plugins/cmp')
lua require('plugins/todo-comments')
" lua require('plugins/lualine')

lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/markdown-preview')
lua require('plugin-config/vim-floaterm')
lua require('plugin-config/lualine')
lua require('plugin-config/toggleterm')
lua require('plugin-config/comment')
lua require('plugin-config/gitsigns')
lua require('plugin-config/telescope')
lua require('plugin-config/dashboard')
lua require('plugin-config/project')
lua require('plugin-config/indent-blankline')

" NOTE: lsp配置
lua require("lsp.setup")
lua require("lsp.cmp")
lua require("lsp.ui")
lua require("lsp.null-ls")
" WARN:格式化 -> 非全局的格式化工作不生效
lua require("lsp.formatter")

lua require("dap.nvim-dap")
" lua require("lsp/ui")

" set background=dark
" colorscheme zephyr

call plug#begin()
" https://github.com/vim-airline/vim-airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" https://github.com/preservim/nerdcommenter
" Plug 'preservim/nerdcommenter'
call plug#end()

" execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
