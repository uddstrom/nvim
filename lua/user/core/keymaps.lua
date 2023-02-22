local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General keymaps
keymap("i", "jk", "<ESC>", opts) -- switch mode to Normal

-- Window management --
-- navigate
keymap("n", "<C-h>", "<C-w>h", opts) -- focus left
keymap("n", "<C-j>", "<C-w>j", opts) -- focus down
keymap("n", "<C-k>", "<C-w>k", opts) -- focus up
keymap("n", "<C-l>", "<C-w>l", opts) -- focus right
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
-- resize
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- terminal
keymap("n", "<leader>ttv", ":vs|:terminal<CR>", opts)
keymap("n", "<leader>tth", ":split|:terminal<CR>", opts)

-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
