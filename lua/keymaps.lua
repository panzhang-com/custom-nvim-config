local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 向上或向下移动9行
keymap("n", "<A-j>", "9j", opt)
keymap("n", "<A-k>", "9k", opt)

-- 切换缓冲区
keymap("n", "<A-h>", "<C-w>h", opt)
keymap("n", "<A-l>", "<C-w>l", opt)

