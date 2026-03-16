return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
        -- optionally you can also control exclusion by filetypes:
        -- exclude = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
      },
    },
  },
}
