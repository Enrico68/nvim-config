-- API Keys
vim.env.MOONSHOT_API_KEY = vim.env.MOONSHOT_API_KEY or os.getenv("MOONSHOT_API_KEY")
vim.env.MISTRAL_API_KEY = vim.env.MISTRAL_API_KEY or os.getenv("MISTRAL_API_KEY")

return {
  {
    "yetone/avante.nvim",
    build = vim.fn.has("win32") ~= 0
        and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
        or "make",
    event = "VeryLazy",
    version = false,
    ---@module 'avante'
    ---@type avante.Config
    opts = {
      instructions_file = "avante.md",
      provider = "moonshot",
      auto_suggestions_provider = "moonshot",

      acp_providers = {
        ["mistral-vibe"] = {
          command = "/Users/enricopirani/.local/bin/vibe-acp",
          env = {
            MISTRAL_API_KEY = os.getenv("MISTRAL_API_KEY") or "metti-qui-la-tua-key",
          },
        },
      },

      behaviour = {
        auto_suggestions = false,
        auto_suggestions_respect_ignore = false,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = false,
        auto_focus_sidebar = true,
        jump_result_buffer_on_finish = false,
        support_paste_from_clipboard = true,
        minimize_diff = true,
        enable_token_counting = true,
      },

      providers = {
        moonshot = {
          endpoint = "https://api.moonshot.ai/v1",
          model = "kimi-latest",
          timeout = 30000,
          api_key_name = "MOONSHOT_API_KEY",
          extra_request_body = {
            temperature = 0.75,
            max_tokens = 32768,
          },
        },
        mistral = {
          endpoint = "https://api.mistral.ai/v1",
          model = "mistral-large-latest",
          timeout = 30000,
          api_key_name = "MISTRAL_API_KEY",
          extra_request_body = {
            temperature = 0.3,
            max_tokens = 32768,
          },
        },
      },
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-mini/mini.pick",
      "nvim-telescope/telescope.nvim",
      "hrsh7th/nvim-cmp",
      "ibhagwan/fzf-lua",
      "stevearc/dressing.nvim",
      "folke/snacks.nvim",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
