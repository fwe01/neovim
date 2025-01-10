return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("refactoring").setup()

    vim.keymap.set("x", "<leader>ref", function()
      require("refactoring").refactor("Extract Function")
    end, {
      desc = "Extract Function",
    })
    vim.keymap.set("x", "<leader>reF", function()
      require("refactoring").refactor("Extract Function To File")
    end, {
      desc = "Extract Function To File",
    })
    -- Extract function supports only visual mode
    vim.keymap.set("x", "<leader>rev", function()
      require("refactoring").refactor("Extract Variable")
    end, {
      desc = "Extract Variable",
    })
    -- Extract variable supports only visual mode
    vim.keymap.set("n", "<leader>rif", function()
      require("refactoring").refactor("Inline Function")
    end, {
      desc = "Inline Function",
    })
    -- Inline func supports only normal
    vim.keymap.set({ "n", "x" }, "<leader>riv", function()
      require("refactoring").refactor("Inline Variable")
    end, {
      desc = "Inline Variable",
    })
    -- Inline var supports both normal and visual mode

    vim.keymap.set("n", "<leader>reb", function()
      require("refactoring").refactor("Extract Block")
    end, {
      desc = "Extract Block",
    })
    vim.keymap.set("n", "<leader>reB", function()
      require("refactoring").refactor("Extract Block To File")
    end, {
      desc = "Extract block to file",
    })
    -- Extract block supports only normal mode
  end,
}
