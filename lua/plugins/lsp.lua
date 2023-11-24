return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- "jose-elias-alvarez/null-ls.nvim",
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    "folke/neodev.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  event = "VeryLazy",
  main = "alpha.lsp",
  opts = {
    mason = {
      enable = true,
      auto_install = false,
    },
    servers = {
      phpactor = { enable = true },
      volar = {
        enable = true,
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
        -- Otras opciones específicas de Volar si las necesitas
      },
    },
  },
}
