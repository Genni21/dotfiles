require("genni")
vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("Sage", {}),
    pattern = { "sage" },
    callback = function()
        vim.opt.ft = "python"
    end
})
vim.api.nvim_set_option("clipboard","unnamed")

