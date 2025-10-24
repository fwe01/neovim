return {
  -- Add Themes
  { "ellisonleao/gruvbox.nvim" },
  { "doums/darcula" },
  { "catppuccin/nvim", name="catppuccin" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "akinsho/bufferline.nvim",
    enabled = true,
  },
}
