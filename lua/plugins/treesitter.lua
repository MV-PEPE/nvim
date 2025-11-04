-- Set of programming language parsers
return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    opts = {
        ensure_installed = {
            "lua",
            "rust",
            "toml"
        }
    },
}

