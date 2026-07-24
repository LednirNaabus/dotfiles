return {
    "nvim-telescope/telescope.nvim", version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                vimgrep_arguments = {
                    "rg",
                    "--hidden",
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--hidden",
                    "--no-ignore",
                    "--glob=!.git/*",
                    "--glob=!node_modules/*",
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        })
        local builtin = require("telescope.builtin")
        local map = vim.keymap
        map.set("n", "<leader>ff", function()
            builtin.find_files({
                hidden = true,
                no_ignore = true,
                find_command = {
                    "fd",
                    "--type", "f",
                    "--hidden",
                    "--exclude", ".git",
                }
            })
        end, { desc = "Find files" })
        map.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
        map.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
        map.set("n", "<leader>fh", builtin.help_tags, { desc = "Show help tags" })
    end
}
