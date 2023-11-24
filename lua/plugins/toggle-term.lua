return {
  "akinsho/toggleterm.nvim",
  keys = {
    { [[<C-/>]] },
    { "<leader>1", "<Cmd>1ToggleTerm<Cr>", desc = "Terminal #1" },
    { "<leader>2", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
    { "<leader>3", "<Cmd>3ToggleTerm<Cr>", desc = "Terminal #3" },
  },
  cmd = { "ToggleTerm", "TermExec" },
  opts = {
    size = 20,
    hide_numbers = true,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.3,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
    float_opts = {
      border = "single",
      width = 2,
      height = 7,
      winblend = 3,
      zindex = 1,
    },
    highlights = {
      FloatBorder = {
        guifg = "#FFAC1C",
        guibg = "#FFAC1C",
      },
    },
    winbar = {
      enabled = false,
      name_formatter = function(term)
        return term.name
      end,
    },
  },
}
