return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = { "ClaudeCode", "ClaudeCodeContinue", "ClaudeCodeResume", "ClaudeCodeVerbose" },
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>",         desc = "Toggle Claude Code" },
    { "<leader>cC", "<cmd>ClaudeCodeContinue<cr>", desc = "Claude Code: continue last" },
    { "<leader>cV", "<cmd>ClaudeCodeVerbose<cr>",  desc = "Claude Code: verbose" },
    { "<leader>cR", "<cmd>ClaudeCodeResume<cr>",   desc = "Claude Code: pick conversation" },
  },
  config = function()
    require("claude-code").setup()
  end
}
