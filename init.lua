-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.fn.system { "git", "-C", "lua/custom", "pull" }

vim.g.rustfmt_autosave = 1

if vim.g.neovide then
  vim.opt.guifont = { "JetBrainsMono Nerd Font", "h10" }
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = true
end
