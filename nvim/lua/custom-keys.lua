--fetch keymap function
local map = vim.api.nvim_set_keymap

--Change leader key
vim.g.mapleader = ","

--map the key n to run the command :NvimTreeToggle
map('n','<C-n>',[[:NvimTreeToggle<CR>]],{noremap  = true}) 

--CTRL+s to save the file
map('n','<C-s>',[[:w<CR>]],{noremap = true})
map('i','<C-s>',[[:w<CR>]],{noremap = true})

--Update plugins
map('n','<leader>-<F3>',[[:PackerSync<CR>]],{noremap  = true})

--Copy and Paste
map("n", "<C-c>", 'y', { noremap = true })
map("n", "<C-v>", 'p', { noremap = true })
map("x", "<C-c>", 'y', { noremap = true })
map("x", "<C-v>", 'p', { noremap = true })
map("i", "<C-c>", '<Esc>+y', { noremap = true })
map("i", "<C-v>", '<Esc>+p', { noremap = true })


