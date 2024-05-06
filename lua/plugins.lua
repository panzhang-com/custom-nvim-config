return require("packer").startup(function(use)
    -- packer 插件管理自己
    use 'wbthomason/packer.nvim'

    -- 主题插件
    use "morhetz/gruvbox"

    -- 侧边栏资源管理器
    use "nvim-tree/nvim-tree.lua"
    use "nvim-tree/nvim-web-devicons"

    -- lspconfig lsp客户端
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- 代码补全相关
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        },
    }
    -- 代码片段补全
    use {
        "hrsh7th/vim-vsnip",
        requires = {
            'hrsh7th/cmp-vsnip',
            'rafamadriz/friendly-snippets',
        }
    }
    use "onsails/lspkind-nvim"
end)
