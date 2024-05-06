-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- 快捷键配置
vim.api.nvim_set_keymap("n", "<A-e>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- 导入nvim-tree
require("nvim-tree").setup({
    git = {
        enable = false
    }
})
