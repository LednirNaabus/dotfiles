return {
    "numToStr/Comment.nvim",
    opts = {},
    config = function()
        require("Comment").setup({
            -- LHS of toggle mappings in NORMAL mode
            toggler = {
                line = "<leader><leader>",
                block = "gbc"
            },
            -- LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                line = "<leader><leader>",
                block = "gb"
            }
        })
    end,
    -- Extra mappings
    -- NORMAL mode:
    -- `gco`: Insert comment to the next line and enter INSERT mode
    -- `gc0`: Insert comment to the previous line and enter INSERT mode
    -- `gcA`: Insert comment to the end of the current line and enter INSERT mode
    -- Quicklink: https://github.com/numtostr/comment.nvim
}
