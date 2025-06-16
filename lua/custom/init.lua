-- In your custom/init.lua or appropriate config file
vim.g.aider_command = "aider --model perplexity/sonar-pro --watch-files"

-- Optional: Auto-start aider when opening certain file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "javascript", "typescript", "lua", "go", "rust" },
  callback = function()
    -- You can add logic here to auto-start aider for specific projects
  end,
})
