-- Plugins that need minimal or no configs at all
return {
    {
        "tpope/vim-fugitive",
    },
    {
        "christoomey/vim-tmux-navigator",
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {},
    },
}
