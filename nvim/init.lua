-- Enable title
vim.o.title = true

-- Enable line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Disable line wrapping
vim.wo.wrap = false

-- Enable auto-indentation and use spaces instead of tabs
vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.softtabstop = 4
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

-- Display invisible characters (e.g., tabs, trailing spaces)
vim.opt.list = true
