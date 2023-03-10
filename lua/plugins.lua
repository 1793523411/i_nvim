--? new

-- 每次保存 plugins.lua 自动安装插件
pcall(
	vim.cmd,
	[[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

return require("packer").startup({
	function()
		-- Packer can manage itself
		use("wbthomason/packer.nvim")
		-- gruvbox theme
		use({
			"ellisonleao/gruvbox.nvim",
			requires = { "rktjmp/lush.nvim" },
		})
		-- theme
		use("shaunsingh/nord.nvim")
		-- theme
		use({
			"glepnir/zephyr-nvim",
			requires = { "nvim-treesitter/nvim-treesitter", opt = true },
		})
		-- theme tokyonight  -> mirror.ghproxy.com
		use("folke/tokyonight.nvim")
		-- use {
		--     "williamboman/nvim-lsp-installer",
		--     "neovim/nvim-lspconfig",
		-- }
		-- nvim-tree
		use({
			"kyazdani42/nvim-tree.lua",
			requires = "kyazdani42/nvim-web-devicons",
		})
		use({
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires = {
				"nvim-lua/plenary.nvim",
				"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
				"MunifTanjim/nui.nvim",
			},
		})
		-- tab,footerStatus
		use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
		use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
		use("arkav/lualine-lsp-progress")
		-- 代码高亮
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		use({
			"iamcco/markdown-preview.nvim",
			run = function()
				vim.fn["mkdp#util#install"]()
			end,
		})
		use({
			"iamcco/markdown-preview.nvim",
			run = "cd app && npm install",
			setup = function()
				vim.g.mkdp_filetypes = { "markdown" }
			end,
			ft = { "markdown" },
		})
		-- 终端
		use("voldikss/vim-floaterm")
		-- use 'hrsh7th/nvim-cmp'
		-- 终端
		use({ "akinsho/toggleterm.nvim" })
		-- Comment
		use("numToStr/Comment.nvim")
		-- git相关
		use({
			"lewis6991/gitsigns.nvim",
		})
		use({
			"nvim-telescope/telescope.nvim",
			requires = { "nvim-lua/plenary.nvim" },
		})
		-- -> mirror.ghproxy.com
		use("LinArcX/telescope-env.nvim")
		-- dashboard-nvim
		use("glepnir/dashboard-nvim")
		-- project -> mirror.ghproxy.com
		use("ahmedkhalf/project.nvim")
		-- Lua 增强-> mirror.ghproxy.com
		-- use("folke/lua-dev.nvim")

		-- 补全引擎 -> mirror.ghproxy.com
		-- use("hrsh7th/nvim-cmp")
		-- snippet 引擎 -> mirror.ghproxy.com
		-- use("hrsh7th/vim-vsnip")
		-- -- 补全源 -> mirror.ghproxy.com
		-- use("hrsh7th/cmp-vsnip")
		-- use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		-- use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		-- use("hrsh7th/cmp-path") -- { name = 'path' }
		-- use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

		-- 常见编程语言代码段 -> mirror.ghproxy.com
		-- use("rafamadriz/friendly-snippets")

		-- ui -> mirror.ghproxy.com
		-- use("onsails/lspkind-nvim")
		-- indent-blankline  -> mirror.ghproxy.com
		use("lukas-reineke/indent-blankline.nvim")
		-- -> mirror.ghproxy.com
		-- use("tami5/lspsaga.nvim" )
		-- -> mirror.ghproxy.c
		use({
			"folke/todo-comments.nvim",
			requires = "nvim-lua/plenary.nvim",
			config = function()
				require("todo-comments").setup({
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				})
			end,
		})

		--------------------- LSP start--------------------
		-- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
		use({ "williamboman/nvim-lsp-installer" })
		-- Lspconfig
		use({ "neovim/nvim-lspconfig" })
		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- Snippet 引擎
		use("hrsh7th/vim-vsnip")
		-- 补全源
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
		use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")
		-- UI 增强
		use("onsails/lspkind-nvim")
		use("tami5/lspsaga.nvim")
		-- 代码格式化
		use("mhartington/formatter.nvim")
		use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
		-- TypeScript 增强
		use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
		-- Lua 增强
		use("folke/lua-dev.nvim")
		-- JSON 增强
		use("b0o/schemastore.nvim")
		-- Rust 增强
		use("simrat39/rust-tools.nvim")

		use("mfussenegger/nvim-dap")
		use("theHamsta/nvim-dap-virtual-text")
		use("rcarriga/nvim-dap-ui")
		--------------------- LSP end--------------------
		use("chentoast/marks.nvim")

		--[[ 	use({ "neoclide/coc.nvim", branch = "release" }) ]]
		use("norcalli/nvim-colorizer.lua")
		use({
			"windwp/nvim-autopairs",
			config = function()
				require("nvim-autopairs").setup({})
			end,
		})
	end,
	config = {
		git = {
			-- default_url_format = "https://hub.fastgit.xyz/%s",
			-- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
			-- default_url_format = "https://gitcode.net/mirrors/%s",
			-- default_url_format = "https://gitclone.com/github.com/%s",
		},
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
