return {

    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            local handlers = {
                function (server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end,

                -- Next, you can provide targeted overrides for specific servers.
                ["pylsp"] = function ()
                    require("lspconfig").pylsp.setup{
                        settings = {
                            pylsp = {
                                plugins = {
                                    pyflakes = { enabled = false },
                                    pycodestyle = { enabled = false },
                                    pylsp_mypy = { enabled = true },
                                    jedi_completion = { fuzzy = true },
                                    pylint = { enabled = true, executable = "pylint"},
                                    pyls_isort = { enabled = true }

                                }
                            }
                        }
                    }
                end
            }

            require("mason-lspconfig").setup({ 
                handlers = handlers,
                ensure_installed = {"clangd", "pylsp", "rust_analyzer"},
            })
        end
    },

    {
        lazy = false,
        "neovim/nvim-lspconfig",
        --config = function()
        --    require("lspconfig").clangd.setup {}
        --    require("lspconfig").pylsp.setup {}
        --end
    }
}
