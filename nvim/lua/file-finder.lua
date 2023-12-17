-- search files, even hidden ones
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
-- ripgrep files, respects gitignore
vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})
