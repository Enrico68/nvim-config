return {
  {
    "michaelb/sniprun",
    branch = "master",
    build = "sh install.sh",
    lazy = false,
    config = function()
      require("sniprun").setup({
        -- Mostra output inline sotto la riga di codice (come VSCode inline)
        display = {
          "VirtualText",      -- Output inline sotto il codice
          -- "VirtualTextOk",  -- Alternativa: solo se successo (senza errori)
        },
        
        -- Opzioni display
        display_options = {
          terminal_width = 80,
          terminal_height = 15,
          notification_timeout = 5,
        },
      })
    end,
    -- Keymap che caricano il plugin quando usati
    keys = {
      { "<leader>sr", "<cmd>SnipRun<cr>", desc = "SnipRun: Esegui riga", mode = "n" },
      { "<leader>sr", ":'<,'>SnipRun<cr>", desc = "SnipRun: Esegui selezione", mode = "v" },
      { "<leader>sR", "<cmd>%SnipRun<cr>", desc = "SnipRun: Esegui file", mode = "n" },
      { "<leader>st", "<cmd>SnipReplToggle<cr>", desc = "SnipRun: Toggle REPL", mode = "n" },
      { "<leader>sx", "<cmd>SnipReset<cr>", desc = "SnipRun: Reset", mode = "n" },
      { "<leader>si", "<cmd>SnipInfo<cr>", desc = "SnipRun: Info", mode = "n" },
    },
  },
}
