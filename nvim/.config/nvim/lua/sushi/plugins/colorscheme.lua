return {
  {
    "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --   vim.cmd([[colorscheme tokyonight-night]])
    -- end,
  },
  { "EdenEast/nightfox.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- config = function()
    --   require("rose-pine").setup({
    --     disable_background = true,
    --     disable_float_background = true,
    --   })
    --   vim.cmd([[colorscheme rose-pine]])
    -- end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        palette_overrides = {
          dark0 = "#000000",
        },
        overrides = {
          SignColumn = {
            bg = "#000000",
          },
        },
      })
      -- vim.cmd.colorscheme("gruvbox")
    end,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        -- term_colors = true,
        -- no_italic = false,
        -- no_bold = false,
        -- styles = {
        --   comments = {},
        --   conditionals = {},
        --   loops = {},
        --   functions = {},
        --   keywords = {},
        --   strings = {},
        --   variables = {},
        --   numbers = {},
        --   booleans = {},
        --   properties = {},
        --   types = {},
        -- },
        color_overrides = {
          mocha = {
            base = "#000000",
            mantle = "#000000",
            crust = "#000000",
          },
        },
        -- highlight_overrides = {
        --   mocha = function(C)
        --     return {
        --       TabLineSel = { bg = C.pink },
        --       CmpBorder = { fg = C.surface2 },
        --       Pmenu = { bg = C.none },
        --       TelescopeBorder = { link = "FloatBorder" },
        --     }
        --   end,
        -- },
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  { "SushiJ/vesper-nvim" },
  { "savq/melange-nvim" },
}
