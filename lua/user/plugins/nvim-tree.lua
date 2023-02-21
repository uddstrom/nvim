-- Nvim-tree is a file exporer with git integraion for neovim.
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup()
