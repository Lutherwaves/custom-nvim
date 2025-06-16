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
    "tpope/vim-fugitive",
    event = "VeryLazy",
    dependencies = {
      "tpope/vim-rhubarb",
      "tpope/vim-obsession",
      "tpope/vim-unimpaired",
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      commit = "29be0919b91fb59eca9e90690d76014233392bef",
    },
    {
      "lewis6991/gitsigns.nvim",
    },
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

  --AVANTE
  -- {
  --   "yetone/avante.nvim",
  --   event = "VeryLazy",
  --   version = false, -- Never set this value to "*"! Never!
  --   opts = {
  --     -- add any opts here
  --     -- for example
  --     provider = "perplexity",
  --     providers = {
  --       perplexity = {
  --         __inherited_from = "openai",
  --         api_key_name = "PERPLEXITY_API_KEY",
  --         endpoint = "https://api.perplexity.ai",
  --         model = "sonar-pro",
  --       },
  --     },
  --     auto_suggestions_provider = "perplexity",
  --     -- suggestion.debounce_ms=600
  --   },
  --   -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  --   build = "make",
  --   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-lua/plenary.nvim",
  --     "MunifTanjim/nui.nvim",
  --     --- The below dependencies are optional,
  --     "echasnovski/mini.pick", -- for file_selector provider mini.pick
  --     "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
  --     "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
  --     "ibhagwan/fzf-lua", -- for file_selector provider fzf
  --     "stevearc/dressing.nvim", -- for input provider dressing
  --     "folke/snacks.nvim", -- for input provider snacks
  --     "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  --     "zbirenbaum/copilot.lua", -- for providers='copilot'
  --     {
  --       -- support for image pasting
  --       "HakonHarnes/img-clip.nvim",
  --       event = "VeryLazy",
  --       opts = {
  --         -- recommended settings
  --         default = {
  --           embed_image_as_base64 = false,
  --           prompt_for_file_name = false,
  --           drag_and_drop = {
  --             insert_mode = true,
  --           },
  --           -- required for Windows users
  --           -- use_absolute_path = true,
  --         },
  --       },
  --     },
  --     {
  --       -- Make sure to set this up properly if you have lazy=true
  --       "MeanderingProgrammer/render-markdown.nvim",
  --       opts = {
  --         file_types = { "markdown", "Avante" },
  --       },
  --       ft = { "markdown", "Avante" },
  --     },
  --   },
  -- },
}
