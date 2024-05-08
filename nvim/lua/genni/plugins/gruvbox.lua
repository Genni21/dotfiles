return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
        require('gruvbox').setup({ disable_italics = true, })
        vim.cmd('colorscheme gruvbox')
    end
}
