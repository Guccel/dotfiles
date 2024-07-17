--[[
Neovim setting file for ya boi Allister mcG
ye cool stuff
basic as heck but still customised to my liking
(not at all really yet ngl)
--]]

-- Set <space> as the leader key
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Imports
require("settings")
require("package_manager")
require("plugins")
require("keymaps")
require("usercmds")
require("autocmds")

-- vim: ts=2 sts=2 sw=2 et
