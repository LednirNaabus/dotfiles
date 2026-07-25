return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "bashls",
            "clangd",
            "dockerls",
            "docker_compose_language_service",
            "sqlls",
            "ruff",
            "basedpyright",
            "rust_analyzer",
            -- "gopls",
            "intelephense",
            "html",
            "cssls",
            "markdown_oxide",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)
        vim.lsp.config("*", {
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })

        vim.lsp.config("basedpyright", {
            settings = {
                basedpyright = {
                    disableOrganizeImports = true,
                },
                python = {
                    analysis = {
                        ignore = { "*" },
                    },
                },
            },
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local bufnr = args.buf
                local map = function(mode, lhs, rhs)
                    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
                end
                map("n", "gd", vim.lsp.buf.definition)
                map("n", "K", vim.lsp.buf.hover)
                map("n", "<leader>rn", vim.lsp.buf.rename)
                map("n", "<leader>ca", vim.lsp.buf.code_action)
            end,
        })
    end,
}
