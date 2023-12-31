return {
  { "nvim-lua/plenary.nvim",      lazy = true },
  { "tpope/vim-repeat",           event = "VeryLazy" },
  { "nvim-tree/nvim-web-devicons" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-surround" },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "typescriptreact",
      "typescript",
      "javascript",
      "javascriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  { "mbbill/undotree" },
  { "mattn/emmet-vim" },
  { "uga-rosa/ccc.nvim" },
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },

  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    config = function()
      require("ufo").setup({
        provider_selector = function()
          return { "treesitter", "indent" }
        end,
      })
    end,
  },
  {
    "nvchad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        user_default_options = {
          tailwind = true,
        },
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "roobert/tailwindcss-colorizer-cmp.nvim",
      config = true,
    },
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item)
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
  {
    "euclio/vim-markdown-composer",
    build = "cargo build --release",
  },
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      hooks = {
        pre = function()
          require("ts_context_commentstring.internal").update_commentstring({})
        end,
      },
    },
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  },
  {
    "numToStr/Comment.nvim",
    lazy = false,
  },
  {
    "gelguy/wilder.nvim",
    config = function()
      require("wilder").setup({ modes = { ":", "/", "?" } })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "vertical",
      size = 40,
    },
  },
}
