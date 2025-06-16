return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require "configs.cmp"
    end,
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    dependencies = {
      "tpope/vim-rhubarb",
      "tpope/vim-obsession",
      "tpope/vim-unimpaired",
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    commit = "29be0919b91fb59eca9e90690d76014233392bef",
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        hidden = true,
        no_ignore = true,
        file_ignore_patterns = { "node_modules/", "%.venv/", "%.mypy_cache", "^node_modules/", "^%.venv/" },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
      },
    },
  },
  -- Official aider.nvim integration
  {
    "joshuavial/aider.nvim",
    lazy = false,
    config = function()
      require("aider").setup {
        -- You can add options here if needed, see plugin docs
        -- Example: model = "perplexity/sonar-pro",
      }
    end,
    keys = {
      { "<leader>ai", "<cmd>AiderOpen<cr>", desc = "Open Aider Chat" },
      { "<leader>af", "<cmd>AiderAddCurrentFile<cr>", desc = "Add Current File to Aider" },
      { "<leader>ar", "<cmd>AiderRemoveCurrentFile<cr>", desc = "Remove Current File from Aider" },
      { "<leader>ac", "<cmd>AiderClear<cr>", desc = "Clear Aider Context" },
    },
  },
}
