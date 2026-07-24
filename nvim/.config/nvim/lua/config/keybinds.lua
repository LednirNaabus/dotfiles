vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap

-- general mapping
map.set("i", "jk", "<Esc>", { desc = "Exit insert mode (alternative)" })

-- nvim-tree mappings
map.set("n", "<leader>t", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle nvim-tree"} )

-- barbar.nvim mappings
map.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { desc = "Previous buffer"} )
map.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { desc = "Next buffer"} )
map.set("n", "<A-w>", "<Cmd>BufferClose<CR>", { desc = "Close buffer"} )
map.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { desc = "Move buffer left"} )
map.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", { desc = "Move buffer right"} )

-- source file
map.set("n", "<leader>so", function()
    vim.cmd("source %")
    vim.notify(("Reloaded %s"):format(vim.fn.expand("%:t")))
end, { desc = "Source current file" })
