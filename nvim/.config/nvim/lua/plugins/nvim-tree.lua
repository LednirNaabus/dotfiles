return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                side = "right",
                width = 27,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
            git = {
                enable = true,
                ignore = false,
            },
        })
    end,
}
