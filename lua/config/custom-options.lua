-- All the custom options are set up here

-- Set the default tab indentation to be 4 spaces
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=-1")
vim.cmd("set expandtab")

-- Show relative line numbers together with the actual current line number
vim.cmd("set number relativenumber")

-- Make LSP errors show up
vim.diagnostic.config({ virtual_text = true, virtual_lines = { current_line = true }, })
