return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
        require("nvim-treesitter").setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
        })

        require("nvim-treesitter").install({
            "bash", "lua", "vim", "vimdoc", "regex", "sql",
            "dockerfile", "toml", "json", "c", "cpp", "python",
            "go", "gitignore", "html", "css", "make", "cmake",
            "markdown", "markdown_inline", "tsx", "javascript",
            "typescript", "php", "yaml",
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "bash", "lua", "vim", "sql", "dockerfile", "toml",
                "json", "c", "cpp", "python", "go", "html", "css",
                "make", "cmake", "markdown", "tsx", "javascript",
                "typescript", "php", "yaml", },
            callback = function()
                vim.treesitter.start()
            end,
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "bash", "lua", "vim", "sql", "dockerfile", "toml",
                "json", "c", "cpp", "python", "go", "html", "css",
                "make", "cmake", "markdown", "tsx", "javascript",
                "typescript", "php", "yaml", },
            callback = function()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
