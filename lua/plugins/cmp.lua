return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "windwp/nvim-autopairs",
    -- "hrsh7th/cmp-vsnip",
    -- "hrsh7th/vim-vsnip",
    "rafamadriz/friendly-snippets",
  },
  event = "VeryLazy",
  main = "config.plugins.cmp",
  config = true,
}
