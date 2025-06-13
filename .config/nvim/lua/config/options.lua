--line numbers and highlighting
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set cursorline')
vim.cmd('set hidden')
--mouse stuff
vim.cmd('set mouse=a')
--tabbing
vim.cmd('set expandtab')
vim.cmd('set shiftwidth=2')
vim.cmd('set tabstop=2')

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- for the colorizer plugin
vim.cmd("set termguicolors")
-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ igroup = "IncSearch", timeout = 150, on_visual = true })
  end,
})

--vim.cmd('colorscheme evergarden')
vim.cmd('colorscheme catppuccin-mocha')
