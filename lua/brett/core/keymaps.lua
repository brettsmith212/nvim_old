vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
keymap.set("n", "<C-a>", "gg<S-v>G") -- select all
keymap.set("n", "<leader>df", ":w !diff & -<CR>") -- see diff in current file before write

-- split window
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window split

-- move cursor
keymap.set("", "sj", "<C-w>j") -- move cursor to bottom window
keymap.set("", "sk", "<C-w>k") -- move cursor to top window
keymap.set("", "sl", "<C-w>l") -- move cursor to right window
keymap.set("", "sh", "<C-w>h") -- move cursor to left window

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>te", ":tabedit<CR>", { silent = true }) -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- in view mode drag down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- in view mode drag up

keymap.set("n", "<C-d>", "<C-d>zz") -- half page jump keep cursor in middle
keymap.set("n", "<C-u>", "<C-u>zz") -- half page jump keep cursor in middle
keymap.set("n", "n", "nzzzv") -- search terms stay in middle
keymap.set("n", "N", "Nzzzv") -- search terms stay in middle

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- undotree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim fugitive
keymap.set("n", "<leader>gs", vim.cmd.Git)

-- debugger
keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
keymap.set("n", "<F6>", ":lua require'dap'.step_over()<CR>")
keymap.set("n", "<F7>", ":lua require'dap'.step_into()<CR>")
keymap.set("n", "<F8>", ":lua require'dap'.step_out()<CR>")
keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>")
keymap.set("n", "<leader>dt", ":lua require'dap-python'.setup('~/.virtualenvs/debugpy/bin/python')<CR>")
keymap.set("n", "<leader>dui", ":lua require'dapui'.open()<CR>")

require("dapui").setup()
require("dap-python").setup()
require("nvim-dap-virtual-text").setup()
