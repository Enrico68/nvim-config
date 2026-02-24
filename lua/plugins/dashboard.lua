-- ~/.config/nvim/lua/plugins/dashboard.lua
return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      -- ⬇️⬇️⬇️ FUNZIONE FORTUNE QUI ⬇️⬇️⬇️
      local function get_fortune()
        local handle = io.popen("fortune 2>/dev/null")
        if handle then
          local result = handle:read("*a")
          handle:close()
          if result and result ~= "" then
            return result:gsub("\n$", ""):gsub("\n", " ") -- rimuovi newline
          end
        end
        -- Fallback
        local quotes = {
          "🩺 Primum non nocere",
          "🔬 Scientia potentia est",
          "📚 Ars longa, vita brevis",
          "⚕️ In medicina veritas",
          "🎓 Ubi amor medicinae, ibi amor humanitatis",
        }
        math.randomseed(os.time())
        return quotes[math.random(#quotes)]
      end
      -- ⬆️⬆️⬆️ FINE FUNZIONE FORTUNE ⬆️⬆️⬆️

      require("dashboard").setup({
        theme = "hyper",
        config = {
          header = {
            "                                                    ",
            " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                    ",
          },
          shortcut = {
            { desc = "🔍 Files", group = "@property", action = "Telescope find_files", key = "f" },
            { desc = "📝 New", group = "Label", action = "ene | startinsert", key = "e" },
            { desc = "⚙️  Config", group = "Number", action = "e ~/.config/nvim/lua/chadrc.lua", key = "c" },
            { desc = "💤 Lazy", group = "DiagnosticHint", action = "Lazy", key = "l" },
          },
          project = { enable = true, limit = 4 },
          mru = { limit = 5 },
          -- ⬇️⬇️⬇️ FOOTER CON FORTUNE ⬇️⬇️⬇️
          footer = function()
            return { "", "🎲 " .. get_fortune() }
          end,
          -- ⬆️⬆️⬆️ FINE FOOTER ⬆️⬆️⬆️
        },
      })
    end,
    dependencies = { 
      "nvim-tree/nvim-web-devicons",
      -- "rubiin/fortune.nvim" -- non serve se usi fortune di sistema
    },
  },
}
