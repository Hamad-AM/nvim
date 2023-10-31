require("hamad.lazy")
require("hamad.remap")
require("hamad.set")

vim.cmd([[colorscheme gruvbox]])
vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    handlers = {
        lsp_zero.default_setup,
    }
})
