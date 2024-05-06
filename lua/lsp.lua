require("nvim-lsp-installer").setup()
local lspconfig = require("lspconfig")

-- nvim-data 根路径
local nvim_data_path = vim.fn.stdpath("data")

-- sumneko_lua lsp服务器相关配置
-- sumneko_binary 和 sumneko_root_path 的路径
local sumneko_binary = nvim_data_path .. "\\lsp_servers\\sumneko_lua\\extension\\server\\bin\\lua-language-server.exe"
local sumneko_root_path = nvim_data_path .. "\\lsp_servers\\sumneko_lua\\extension\\server\\bin\\main.lua"

-- 挂载sumneko_lua lsp服务器
lspconfig.sumneko_lua.setup({
    cmd = { sumneko_binary, "-E", sumneko_root_path },
})

-- 挂载tsserver lsp服务器
lspconfig.tsserver.setup({
    cmd = { nvim_data_path .. "\\lsp_servers\\tsserver\\node_modules\\.bin\\typescript-language-server.cmd", "--stdio" },
    filetype = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
})

-- 配置快捷键绑定
local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
-- code action
keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
-- go xx
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
keymap('n', 'gs', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
-- diagnostic
keymap('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
keymap('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
-- keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
-- leader + =
keymap('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
-- keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
-- keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
-- keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
-- keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
-- keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)kkkkkkkkk
