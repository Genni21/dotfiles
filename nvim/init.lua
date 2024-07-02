require("genni")
vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("Sage", {}),
    pattern = { "sage" },
    callback = function()
        vim.opt.ft = "python"
    end
})
local enabled = true
function _G.toggle_diagnostics()
	enabled = not enabled
	if enabled then
		vim.diagnostic.enable()
	else
		vim.diagnostic.disable()
	end
end
vim.api.nvim_set_keymap('n', '<leader>tt', ':call v:lua.toggle_diagnostics()<CR>', {noremap = true, silent = true})

vim.api.nvim_set_option("clipboard","unnamed")

