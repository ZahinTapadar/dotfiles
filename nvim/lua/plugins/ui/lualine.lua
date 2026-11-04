-- Statusline (transparent). Shows NORMAL / INSERT / VISUAL.

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    opts = function()
        local theme = {}

        for _, mode in ipairs({
            "normal",
            "insert",
            "visual",
            "replace",
            "command",
            "inactive",
        }) do
            theme[mode] = {
                a = { fg = "#88c0d0", bg = "NONE", gui = "bold" },
                b = { fg = "#d8dee9", bg = "NONE" },
                c = { fg = "#d8dee9", bg = "NONE" },
            }
        end

        return {
            options = {
                theme = theme,
                section_separators = "",
                component_separators = "│",
                globalstatus = true,
            },

            sections = {
                lualine_a = { "mode" },
                lualine_b = { { "filename", path = 1 } },
                lualine_c = {},
                lualine_x = { "diagnostics", "branch", "diff" },
                lualine_y = { "location", "filetype" },
                lualine_z = {},
            },
        }
    end,
}
