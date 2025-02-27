return {

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- "intelephense",
        -- "phpstan",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        -- php = { "phpstan" },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,

          hide_by_name = {

            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<F5>",
        function()
          require("dap").continue({ before = get_args })
        end,
        desc = "Run with Args",
      },
      {
        "<F1>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<F2>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<F3>",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
    },
  },
  {
    "folke/ts-comments.nvim",
    opts = {
      lang = {
        -- php = "// %s",
        phpdoc = { "// %s" },
      },
    },
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  },
}
