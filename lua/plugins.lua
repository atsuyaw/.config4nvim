vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
use "brenoprata10/nvim-highlight-colors"
use "echasnovski/mini.indentscope"
use "nvim-lualine/lualine.nvim"
use "EdenEast/nightfox.nvim"
use "nvim-tree/nvim-tree.lua"
use "nvim-tree/nvim-web-devicons"
use "vim-denops/denops.vim"
-- use "vim-skk/skkeleton"
use "airblade/vim-gitgutter"
use "tpope/vim-commentary"
use "shaunsingh/nord.nvim"
use {
  "williamboman/mason.nvim",
  requires = {
    "williamboman/mason-lspconfig.nvim",
  }
}
use {
  "Shougo/ddc.vim",
  requires = {
    "vim-denops/denops.vim",
    "Shougo/ddc-ui-native",
    "Shougo/ddc-source-around",
    "Shougo/ddc-matcher_head",
    "Shougo/ddc-sorter_rank",
    "Shougo/ddc-source-nvim-lsp",
    "uga-rosa/ddc-nvim-lsp-setup",
    "neovim/nvim-lspconfig",
    "tani/ddc-fuzzy",
    "mikanIchinose/ddc-gitmoji",
  }
}
end)
-- require("nvim-highlight-colors").setup{}
require("nvim-tree").setup{}
require("mini.indentscope").setup{}
require("mason").setup{}
require("ddc_nvim_lsp_setup").setup{}
require("lspconfig").denols.setup{}
