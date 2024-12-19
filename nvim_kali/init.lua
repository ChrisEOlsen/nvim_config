-- Set leader key to space
vim.g.mapleader = " "

-- Enable clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable line numbers and true color
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true

-- Disable netrw (conflicts with nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Install lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
    -- File explorer
    { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

    -- Fuzzy finder
    { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

    -- LazyGit integration
    { "kdheepak/lazygit.nvim" },

    -- Theme
    { "ellisonleao/gruvbox.nvim" },	
    { "shaunsingh/nord.nvim" }, -- Add the Nord theme
})

-- Setup plugins
-- Theme setup
vim.cmd("colorscheme nord")

-- NvimTree setup
require("nvim-tree").setup()

-- Keybindings
vim.api.nvim_set_keymap("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true }) -- LazyGit
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true }) -- File explorer
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true }) -- File finder
