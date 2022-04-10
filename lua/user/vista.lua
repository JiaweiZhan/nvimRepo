local status_ok, vista = pcall(require, "vista")
if not status_ok then
	return
end

-- How each level is indented and what to prepend.
-- This could make the display more compact or more spacious.
-- e.g., more compact: ["▸ ", ""]
-- Note: this option only works for the kind renderer, not the tree renderer.
vim.g.vista_icon_indent = '["╰─▸ ", "├─▸ "]'

-- To enable fzf's preview window set g:vista_fzf_preview.
-- The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
-- For example:
vim.g.vista_fzf_preview = '["right:50%"]'

vim.g.vista_default_executive = 'nvim_lsp'

-- Change some default icons
--- see: https://github.com/slavfox/Cozette/blob/master/img/charmap.txt
vim.cmd [[
  let g:vista#renderer#icons = {
  \   "function": "\u0192",
  \   "variable": "\uf00d",
  \   "prototype": "\uf013",
  \   "macro": "\uf00b",
  \ }
]]

