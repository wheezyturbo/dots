require("config.lazy")


vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"

-- use the system clipboard (unnamedplus) for all operations
vim.opt.clipboard = "unnamedplus"


-- highlight on yank
vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'kickstart-highlight-yank',
  callback = function() vim.highlight.on_yank { timeout = 200 } end,
})

-- nvim-tree
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>/', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- mason
vim.keymap.set("n", "<leader>cm", "<cmd>Mason<cr>", { desc = "Mason" })

-- nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "NvimTree" })

-- Tree Sitter
require("lazy").setup({
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
})

-- toggle-term
vim.keymap.set("n", "<C-/>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle Floating Terminal" }) --
-- vim.keymap.set("n", "<C-/>", function()
-- 	vim.cmd.vnew()
-- 	vim.cmd.term()
-- 	vim.cmd.wincmd("J")
-- 	vim.api.nvim_win_set_height(0, 15)
-- end)


vim.cmd.colorscheme "gruvbox"

-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")
