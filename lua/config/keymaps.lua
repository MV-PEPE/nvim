-- Map Shift-e to focus/unfocus on the file tree
vim.keymap.set('n', '<S-e>', ':Neotree<CR>', {})
-- Map Space-n to open/close the file tree on the left
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left toggle<CR>', {})

-- Map Space-f to open the file finder
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>f', builtin.find_files, {})

-- Map Shift-k to display documentation in a floating window
vim.keymap.set('n', '<S-k>', vim.lsp.buf.hover, {})

-- Map F12 to go to the definition
vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, {})

-- Map code actions to Space-ca
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

-- Map Ctrl-u to also center the current buffer
vim.keymap.set('n', '<C-u>', '<C-u>zz', { remap = true })

-- Map Ctrl-d to also center the current buffer
vim.keymap.set('n', '<C-d>', '<C-d>zz', { remap = true })

-- Center the current buffer on search
vim.keymap.set('n', '<n>', '<nzz>', {})
vim.keymap.set('n', '<N>', '<Nzz>', { remap = true })

-- Map Space-l-f to format current buffer
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {})

-- Map Space-w to write buffer
vim.keymap.set('n', '<leader>w', ':write<CR>')

-- Map Space-q to quit buffer
vim.keymap.set('n', '<leader>q', ':quit<CR>')

-- Map Space-h to start up help
vim.keymap.set('n', '<leader>h', ':help ')

-- Map [d and ]d to jump between diagnostic messsages
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- Set highlight on search (in custom-options.lua), but clear on pressing Esc in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable arrow kes in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move"<CR>')
