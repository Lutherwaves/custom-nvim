return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- {
  --   'Exafunction/codeium.vim',
  --   event = 'BufEnter'
  -- },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- These are some examples, uncomment them if you want to see them work!
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
      "nomnivore/ollama.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },

      -- All the user commands added by the plugin
      cmd = { "Ollama", "OllamaModel", "OllamaServe", "OllamaServeStop" },

      keys = {
        -- Sample keybind for prompt menu. Note that the <c-u> is important for selections to work properly.
        {
          "<leader>oo",
          ":<c-u>lua require('ollama').prompt()<cr>",
          desc = "ollama prompt",
          mode = { "n", "v" },
        },

        -- Sample keybind for direct prompting. Note that the <c-u> is important for selections to work properly.
        {
          "<leader>oG",
          ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>",
          desc = "ollama Generate Code",
          mode = { "n", "v" },
        },
      },
      --
      -- --@type Ollama.Config
      -- opts = {
      --   model = "mistral",
      --   url = "http://127.0.0.1:11434",
      --   serve = {
      --     on_start = false,
      --     command = "ollama",
      --     args = { "serve" },
      --     stop_command = "pkill",
      --     stop_args = { "-SIGTERM", "ollama" },
      --   },
      --   -- View the actual default prompts in ./lua/ollama/prompts.lua
      --   prompts = {
      --     Sample_Prompt = {
      --       prompt = "This is a sample prompt that receives $input and $sel(ection), among others.",
      --       input_label = "> ",
      --       model = "mistral",
      --       action = "display",
      --     },
      --   },
      -- },
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      commit = "29be0919b91fb59eca9e90690d76014233392bef",
    },
    {
      "lewis6991/gitsigns.nvim",
    },
    -- {
    --   "kiddos/gemini.nvim",
    --   build = { "pip install -r requirements.txt", ":UpdateRemotePlugins" },
    --   config = function()
    --     require("gemini").setup()
    --   end,
    -- },
    -- {
    -- 	"williamboman/mason.nvim",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"lua-language-server", "stylua",
    -- 			"html-lsp", "css-lsp" , "prettier"
    -- 		},
    -- 	},
    -- },
    --
    -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
  },
}
