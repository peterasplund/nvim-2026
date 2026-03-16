local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<F3>", "<cmd>noh<CR>") -- Clear highlights

-- file tree
map("n", "<Leader>m", Snacks.explorer.open)
map("n", "<F4>", "<cmd>:NvimTreeFocus<CR>")

-- telescope
map("n", "<C-p>", Snacks.picker.files) -- Fuzzy find file in project

map(
  "",
  "<Leader>p",
  "<cmd>lua require('telescope.builtin').find_files({no_ignore = true})<CR>",
  { noremap = true, silent = true }
) -- Fuzzy find file in project, ignoring ignores
map("n", "<F2>", Snacks.picker.grep) -- Grep all files in project
map("n", "<Leader>b", Snacks.picker.buffers) -- Buffers

map("n", "<F1>", "<cmd>lua vim.diagnostic.open_float()<CR>")

-- Debugger
map("n", "db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
map("n", "dc", "<cmd>lua require'dap'.continue()<CR>")
map("n", "dsi", "<cmd>lua require'dap'.step_into()<CR>")
map("n", "dso", "<cmd>lua require'dap'.step_over()<CR>")
map("n", "dss", "<cmd>lua require'dap'.repl.open()<CR>")

-- LSP
map("n", "gd", ":vsplit | <Cmd>lua goto_definition({ reuse_win = false })<CR>")
-- map('n', 'gd', '<Cmd>lua goto_definition()<CR>')

map("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
map("n", "<Leader>g", "<Cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<Leader>h", "<Cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
map("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
map("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
map("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
map("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
map("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
map("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
map("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>")
--map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
map("n", "<space>f", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")

map("n", "<space>g", "<cmd>lua vim.lsp.buf.format { async = true }<CR>")

map("n", "<Leader>r", '<cmd>lua require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })<CR>')
