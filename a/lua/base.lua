vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

vim.wo.number = true

vim.api.nvim_create_user_command("note", function(opts)
  vim.cmd("e " .. "~/_/note/note.md")
end, {})

vim.api.nvim_create_user_command("M", function(opts)
  vim.cmd(":%s/\\%(.\\)\\@<!\\n//ig")
end, {})

vim.api.nvim_create_user_command("L", function(opts)
  vim.cmd(":%s/\\!\\[.*\\]\\(.*\\)\\n//ig")
end, {})
