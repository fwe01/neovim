return {
  -- Add Themes
  { "ellisonleao/gruvbox.nvim" },
  { "doums/darcula" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}
