return {
  {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter", -- Carica solo quando entri in modalità inserimento
    config = function()
      require("supermaven-nvim").setup({
        -- Comandi keymap
        keymaps = {
          accept_suggestion = "<Tab>",      -- Accetta tutto il suggerimento
          clear_suggestion = "<C-]>",       -- Cancella suggerimento
          accept_word = "<C-j>",            -- Accetta solo la parola
        },
        -- File da ignorare (opzionale)
        ignore_filetypes = {
          -- "python" = true,  -- se vuoi disabilitare per Python
        },
        -- Aspetto
        color = {
          suggestion_color = "#808080",     -- Grigio per i suggerimenti
          cterm = 244,
        },
        -- Logging (usa "off" per disabilitare)
        log_level = "info",
        -- Disabilita se vuoi usare altri tool di completion
        disable_inline_completion = false,
        -- Disabilita i keymap di default se vuoi i tuoi
        disable_keymaps = false,
      })
    end,
  },
}
