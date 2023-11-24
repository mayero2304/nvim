
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local my_actions = require("alpha.telescope.my_actions")
map("n", "<leader>rp", function()
  require("telescope.builtin").find_files({
    prompt_title = "< Plugins >",
    cwd = "$HOME/.config/nvim/lua/plugins/",
    attach_mappings = function(_, map)
      map("i", "<C-y>", my_actions.create_plugin)
      map("i", "<C-w>", my_actions.disable_plugin)
      map("i", "<C-e>", my_actions.enable_plugin)

      return true
    end,
  })
end)
map("n", "<C-a>", "gg<S-v>G")

map("n", "<leader>rn", function()
  require("telescope.builtin").find_files({
    prompt_title = "< Neovim >",
    cwd = "$HOME/.config/nvim/",
  })
end)

map("n", "<C-c>", ":ColorizerToggle<CR>", opts)

-- map("n", "<leader>t", "<cmd>ToggleTerm size=12 direction=horizontal<CR>", { noremap = true, silent = true })

map("i", "jj", "<Esc>")
local env_window_opened = false

local function toggleEnvFile()
  if env_window_opened then
    vim.cmd("bd! .env")
    env_window_opened = false
  else
    vim.cmd("vsp .env")
    env_window_opened = true
  end
end
map("n", "<leader>le", function()
  toggleEnvFile()
end, { noremap = true, silent = true, desc = "Toggle .env file" }
)

-- Select all
map("n", "<C-y>", "ggyG")

vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
vim.cmd("nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>")
