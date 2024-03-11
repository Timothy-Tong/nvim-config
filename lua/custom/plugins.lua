local plugins = {

  {
    "christoomey/vim-tmux-navigator",
    lazy=false,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    lazy=false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },
  {
    "subnut/nvim-ghost.nvim",
    ft = "ghost",
    lazy = false
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "zig",

      -- high level
        "python",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensured_installed = {
        "mypy",
        "ruff",
        "pyright",
      }
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    }
  }
}

return plugins
