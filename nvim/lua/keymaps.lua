function Map(mode, lhs, rhs, opts)
	local result = {}
	for char in string.gmatch(mode, ".") do
		table.insert(result, char)
	end
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(result, lhs, rhs, options)
end

-- Set <Space> as leader
Map("nv", "<SPACE>", "<NOP>", { silent = true, remap = false })

-- Remap for dealing with word wrap
Map("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true })
Map("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true })

-- Save and Quit
Map("nv", "<LEADER>s", "<CMD>w<CR>")
Map("nv", "<LEADER>x", "<CMD>q<CR>", { silent = true })

-- Move selected up/down lines
Map("n", "J", ":m+1<CR>==", { silent = true })
Map("n", "K", ":m-2<CR>==", { silent = true })
Map("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
Map("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- Diagnostic keymaps
Map("n", "]d", vim.diagnostic.goto_next)
Map("n", "[d", vim.diagnostic.goto_prev)
Map("n", "<LEADER>e", vim.diagnostic.open_float)
Map("n", "<LEADER>q", vim.diagnostic.setloclist)

-- Move between windows
Map("n", "<C-h>", "<CMD>wincmd h<CR>")
Map("n", "<C-l>", "<CMD>wincmd l<CR>")
Map("n", "<C-j>", "<CMD>wincmd j<CR>")
Map("n", "<C-k>", "<CMD>wincmd k<CR>")
Map("t", "<C-h>", "<CMD>wincmd h<CR>")
Map("t", "<C-j>", "<CMD>wincmd j<CR>")
Map("t", "<C-k>", "<CMD>wincmd k<CR>")
Map("t", "<C-l>", "<CMD>wincmd l<CR>")

-- Resize windows
Map("n", "<C-Up>", "<CMD>resize -2<CR>")
Map("n", "<C-Down>", "<CMD>resize +2<CR>")
Map("n", "<C-Left>", "<CMD>vertical resize -2<CR>")
Map("n", "<C-Right>", "<CMD>vertical resize +2<CR>")

Map("t", "<C-Up>", "<CMD>resize -2<CR>")
Map("t", "<C-Down>", "<CMD>resize +2<CR>")
Map("t", "<C-Left>", "<CMD>vertical resize -2<CR>")
Map("t", "<C-Right>", "<CMD>vertical resize +2<CR>")

-- Add/remove lines
Map("n", "<A-k>", '<CMD>call append(line(".") - 1, repeat([""], v:count1))<CR>')
Map("n", "<A-j>", '<CMD>call append(line("."),     repeat([""], v:count1))<CR>')

-- Increase/decrease indentation
Map("n", "<", "v<")
Map("n", ">", "v>")
Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- Goto next/prev of same reference
Map("n", "<A-n>", '<CMD>lua require("illuminate").goto_next_reference()<CR>')
Map("n", "<A-N>", '<CMD>lua require("illuminate").goto_prev_reference()<CR>')

-- Telescope
local telescope = require("telescope.builtin")
Map("n", "<LEADER>ff", telescope.find_files, {})
Map("n", "<LEADER>fg", telescope.live_grep, {})
Map("n", "<LEADER>fb", telescope.buffers, {})
Map("n", "<LEADER>fh", telescope.help_tags, {})

-- Lspsaga
Map("n", "<LEADER>r", "<CMD>Lspsaga rename ++project<CR>")
Map("n", "<LEADER>2", "<CMD>Lspsaga code_action<CR>")

-- Navbuddy
Map("n", "<LEADER>1", "<CMD>Navbuddy<CR>")

--Toggleterm
-- Toggle set in "plugins/ui.lua"
Map("nt", "<TAB>", "<CMD>ToggleTerm<CR>")

-- Leap
local leap = require("leap")
local current_window = vim.fn.win_getid()
Map("n", "<S-TAB>", function()
	leap.leap({ target_windows = { current_window } })
end)

-- -- Treesitter
-- local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
-- -- vim way: ; goes to the direction you were moving.
-- Map("nxo", ";", ts_repeat_move.repeat_last_move)
-- Map("nxo", ",", ts_repeat_move.repeat_last_move_opposite)
-- -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
-- Map("nxo", "f", ts_repeat_move.builtin_f)
-- Map("nxo", "F", ts_repeat_move.builtin_F)
-- Map("nxo", "t", ts_repeat_move.builtin_t)
-- Map("nxo", "T", ts_repeat_move._T)
