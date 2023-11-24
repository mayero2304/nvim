return {
    'declancm/cinnamon.nvim',
    event = "VeryLazy",
    config = function()
       require('cinnamon').setup({
            extra_keymaps = true,
            extended_keymaps = true,
            override_keymps = true,
            alway_scroll = true,
            max_length = 500,
            scroll_limit = -1,
        })
    end
}
