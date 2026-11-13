return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        on_attach = function(_, bufnr)
          vim.diagnostic.config({
            virtual_text = false,
            virtual_lines = false,
            underline = false, -- set true if you still want squiggles
            signs = true,
            update_in_insert = false,
            severity_sort = true,
          })
        end,
      },
    },
  },
}
