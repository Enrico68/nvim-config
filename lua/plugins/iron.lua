-- Alternative a sniprun: Iron.nvim (REPL semplice)
return {
  {
    "hkupty/iron.nvim",
    config = function()
      local iron = require("iron.core")
      
      iron.setup({
        config = {
          scratch_repl = true,
          repl_definition = {
            sh = {
              command = { "zsh" }
            },
            python = {
              command = { "python3" }
            },
            r = {
              command = { "R" }
            }
          },
          repl_open_cmd = require('iron.view').split.vertical.botright(50),
        },
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_file = "<space>sf",
          send_line = "<space>sl",
          send_until_cursor = "<space>su",
          send_mark = "<space>sm",
          mark_motion = "<space>mc",
          mark_visual = "<space>mc",
          remove_mark = "<space>md",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        highlight = {
          italic = true
        },
        ignore_blank_lines = true,
      })
    end,
  },
}
