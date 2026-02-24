require("nvchad.configs.lspconfig").defaults()

local servers = {
  -- Web
  "html",
  "cssls",
  -- Data Science
  "pyright",        -- Python
  "r_language_server", -- R
  "julials",        -- Julia
}

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
