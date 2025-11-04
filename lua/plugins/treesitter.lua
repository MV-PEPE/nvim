-- Set of programming language parsers
return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',

--    config = function()
--        require("nvim-treesitter.configs").setup({
--            ensure_installed = {
--                "lua",
--                "rust",
--                "toml"
--            }
--        })
--    end

    opts = {
        ensure_installed = {
            "lua",
            "rust",
            "toml"
        }
    },
}

