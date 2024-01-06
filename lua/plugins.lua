vim.cmd.packadd "packer.nvim"
require("packer").startup(function()
use "brenoprata10/nvim-highlight-colors"
use "echasnovski/mini.indentscope"
use "nvim-lualine/lualine.nvim"
use "EdenEast/nightfox.nvim"
use "shaunsingh/nord.nvim"
use "tpope/vim-commentary"
use "airblade/vim-gitgutter"
use "nvim-tree/nvim-tree.lua"
use "nvim-tree/nvim-web-devicons"
-- use "vim-skk/skkeleton"
--
-- [ref] https://zenn.dev/botamotch/articles/21073d78bc68bf
use "neovim/nvim-lspconfig"
use "williamboman/mason.nvim"
use "williamboman/mason-lspconfig.nvim"
use "hrsh7th/nvim-cmp"
use "hrsh7th/cmp-nvim-lsp"
use "hrsh7th/vim-vsnip"
end)
--
vim.cmd("colorscheme nightfox")
require('lualine').setup({'nightfox'})
-- require("nvim-highlight-colors").setup{}
require("nvim-tree").setup{}
require("mini.indentscope").setup{}
require("mason").setup{}
require('mason-lspconfig').setup_handlers({ function(server)
  local opt = {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }
  require('lspconfig')[server].setup(opt)
end })
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = {
    { name = "nvim_lsp" },
  },
  -- mapping = cmp.mapping.preset.insert({
  --   ["<C-p>"] = cmp.mapping.select_prev_item(),
  --   ["<C-n>"] = cmp.mapping.select_next_item(),
  --   ['<C-l>'] = cmp.mapping.complete(),
  --   ['<C-e>'] = cmp.mapping.abort(),
  --   ["<CR>"] = cmp.mapping.confirm { select = true },
  -- }),
  -- experimental = {
  --   ghost_text = true,
  -- },
})
