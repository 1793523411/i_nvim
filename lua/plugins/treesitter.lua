-- plugin: nvim-treesitter
-- see: https://github.com/nvim-treesitter/nvim-treesitter
-- rafi settings

-- Setup extra parsers.
local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

parser_configs.http = {
	install_info = {
		url = "https://github.com/NTBBloodbath/tree-sitter-http",
		files = { "src/parser.c" },
		branch = "main",
	},
	filetype = "http",
}

-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99

-- Setup treesitter
require("nvim-treesitter.configs").setup({
	-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
	ensure_installed = {
		"bash",
		"c",
		"clojure",
		"cmake",
		"comment",
		"commonlisp",
		"cpp",
		"css",
		"dart",
		"dockerfile",
		"dot",
		"fennel",
		"fish",
		"go",
		"gomod",
		"gowork",
		"graphql",
		"hack",
		"haskell",
		"hcl",
		"help",
		"html",
		"http",
		"java",
		"javascript",
		"jsdoc",
		"json",
		"json5",
		"jsonc",
		"julia",
		"kotlin",
		"latex",
		"llvm",
		"lua",
		"make",
		"markdown",
		"ninja",
		"nix",
		"norg",
		"perl",
		"php",
		"pug",
		"python",
		"query",
		"r",
		"regex",
		"rst",
		"ruby",
		"rust",
		"scala",
		"scheme",
		"scss",
		"svelte",
		"todotxt",
		"toml",
		"tsx",
		"typescript",
		"vala",
		"vim",
		"vue",
		"yaml",
		"zig",
	},

	highlight = {
		enable = true,
		disable = { "vim" },
	},

	-- https://github.com/p00f/nvim-ts-rainbow
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},

	additional_vim_regex_highlighting = false,

	-- incremental_selection = {
	-- 	enable = true,
	-- 	keymaps = {
	-- 		init_selection = 'gnn',
	-- 		node_incremental = 'grn',
	-- 		scope_incremental = 'grc',
	-- 		node_decremental = 'grm',
	-- 	},
	-- },

	indent = {
		enable = true,
	},

	refactor = {
		highlight_definitions = { enable = true },
		highlight_current_scope = { enable = true },
	},

	-- See: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
	},

	-- See: https://github.com/JoosepAlviste/nvim-ts-context-commentstring
	context_commentstring = {
		enable = true,
		-- Let other plugins (kommentary) call 'update_commentstring()' manually.
		enable_autocmd = false,
	},

	-- See: https://github.com/windwp/nvim-ts-autotag
	autotag = {
		enable = true,
		filetypes = {
			"html",
			"javascript",
			"javascriptreact",
			"typescriptreact",
			"svelte",
			"vue",
		},
	},
})
