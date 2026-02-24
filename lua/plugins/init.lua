return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- ═══════════════════════════════════════════════════════════
  -- TREESITTER FOR DATA SCIENCE
  -- ═══════════════════════════════════════════════════════════
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css",
        -- Data Science
        "python",
        "r",
        "julia",
        "markdown",
        "markdown_inline",
        "yaml",
        "json",
        "csv",
        "dot", -- Graphviz
  		},
  	},
  },
}
