vim.o.background = "dark"
local colorscheme = "tokyonight"
vim.g.tokyonight_style = "night" -- day / night / storm

-- local colorscheme = "zephyr"
-- 半透明
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
  return
end