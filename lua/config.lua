-- [ref] https://zenn.dev/kenkenlysh/articles/6c93a4dbfeb2e2
local opt = vim.opt
-- vim.fn['skkeleton#config']{globalJisyo = "~/.config/nvim/SKK-JISYO.L"}
-- vim.cmd[[colorscheme nord]]
-- 「※」等の記号を打つと、半角文字と重なる問題がある。「※」などを全角文字の幅で表示するために設定する
opt.ambiwidth = 'double'

-- 新しい行を改行で追加した時に、ひとつ上の行のインデントを引き継がせます。
opt.autoindent = true
opt.smartindent = true
-- smartindent と cindent を両方 true にしたときは、cindent のみ true になるようです。
-- opt.cindent = true
-- カーソルが存在する行にハイライトを当ててくれます。
opt.cursorline = true

-- カーソルが存在する列にハイライトを当てたい場合、下記をtrueにする。
-- opt.cursorculumn = true

-- TABキーを押した時に、2文字分の幅を持ったTABが表示されます。
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
-- tabstop で設定した数の分の半角スペースが入力されます。
opt.expandtab = true
-- カーソル行からの相対的な行番号を表示する
-- opt.relativenumber = true
opt.number = true
opt.termguicolors = true
-- 不可視文字可視化
opt.list = true
opt.listchars = { tab = '>>', trail = '-', nbsp = '+' }

vim.cmd("colorscheme nightfox")
require('lualine').setup({'nightfox'})

-- https://zenn.dev/yuma14/articles/ddc-vim-with-lua
vim.fn["ddc#custom#patch_global"]('ui', 'native')  -- uiは一番最初に設定する必要がある
vim.fn["ddc#custom#patch_global"]('sources', {'around',"nvim-lsp"})
vim.fn["ddc#custom#patch_global"]('sourceOptions', {
  _ = {
    matchers = {'matcher_fuzzy'},
    sorters = {'sorter_fuzzy'},
  }
})
vim.fn["ddc#enable"]()

-- vim.keymap.set('i','<C-j>','<Plug>(skkeleton-toggle)')
-- vim.keymap.set('c','<C-j>','<Plug>(skkeleton-toggle)')
-- vim.fn["skkeleton#config"]({globalJisyo="/home/atsuyaw/.skk/SKK-JISYO.L"})
