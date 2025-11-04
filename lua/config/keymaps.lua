-- Map Space-e to focus/unfocus on the file tree
vim.keymap.set('n', '<S-e>', ':Neotree<CR>', {})
-- Map Space-n to open/close the file tree on the left
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left toggle<CR>', {})

-- Map Ctrl-P to open the file finder
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
