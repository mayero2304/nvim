return {
  "rcarriga/nvim-notify",
  enabled = false,
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss all Notifications",
    },
  },
  config = function()
    local notify = require("notify")
    -- this for transparency
    notify.setup({ background_colour = "#000000" })
    -- this overwrites the vim notify function
    vim.notify = notify.notify
  end,
}
