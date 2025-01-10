-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set leader pakai spasi
vim.g.mapleader = " "

-- word wrap
vim.keymap.set("n", "j", "gj", { desc = "Move down in word wrap" })
vim.keymap.set("n", "k", "gk", { desc = "Move down in word wrap" })
vim.keymap.set("n", "<leader>ww", ":set wrap!<CR>", { desc = "Toggle Word Wrap" })

-- nggeser baris
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Highlighted rows down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Highlighted rows up" })

-- kalau shift+J kursor tetep
vim.keymap.set("n", "J", "mzJ`z")

-- Yank 1 baris
vim.keymap.set("n", "Y", "Vy")

-- replace all occurence in file regex
vim.keymap.set(
  "n",
  "<leader>rao",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gcI<Left><Left><Left>]],
  { desc = "Replace all occurence in file using regex" }
)

-- Scrool naik turun
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--   require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--   require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- untuk arch linux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Formatting
vim.keymap.set("n", "<C-l>", function()
  local clientname = ""
  vim.lsp.buf.format({
    filter = function(client)
      clientname = client.name
      return client.name ~= "tsserver"
    end,
  })
  print("formating using", clientname)
end)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- ini chmod kok berbaya
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")

-- CellularAutomaton
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make Code Rain" })
vim.keymap.set("n", "<leader>mgoi", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Make Code Game Of Life" })

-- Highlight search
vim.keymap.set("n", "<leader>h", ":set invhlsearch", { desc = "Toggle Highlight Search" })

--fold
vim.keymap.set("n", "<leader>fme", ":set foldmethod=expr<CR>")
vim.keymap.set("n", "<leader>fmm", ":set foldmethod=marker<CR>")
