-- All the custom options are set up here

-- Set the default tab indentation to be 4 spaces
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=-1")
vim.cmd("set expandtab")

-- Show relative line numbers together with the actual current line number
vim.o.number = true
vim.o.relativenumber = true

-- Sync clipboard between OS and Neovim
vim.schedule(function()
    vim.o.clipboard = 'unnamedplus'
end)

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease the amount of time Neovim waits after you stop typing before it triggers the plugin
vim.o.updatetime = 250

-- Configure how new splits should be opened
vim.o.splitright = true -- Vertical
vim.o.splitbelow = true -- Horizontal

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Make suggestion windows rounded
vim.o.winborder = "rounded"

-- Make LSP errors show up
vim.diagnostic.config({ virtual_text = true, virtual_lines = { current_line = true }, })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})
