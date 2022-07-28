local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- nvimTree
map('n', '<C-m>', ':NvimTreeToggle', opt)
map("n", "<C-u>", "9k", opt) --移动 9 行
map("n", "<C-d>", "9j", opt) --移动 9 行

-- 分屏关屏
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt) -- close others

-- 窗口之间跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- bufferline 左右Tab切换
map("n", "<C-o>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-i>", ":BufferLineCycleNext<CR>", opt)