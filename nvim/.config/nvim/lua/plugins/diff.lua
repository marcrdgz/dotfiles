return {
  {
    "sindrets/diffview.nvim",
    event = "BufReadPre",
    keys = {
      {
        "<leader>go",
        function()
          local lib = require("diffview.lib")
          if lib.get_current_view() then
            vim.cmd("DiffviewClose")
          else
            vim.cmd("DiffviewOpen")
          end
        end,
        mode = { "n", "v" },
        desc = "Toggle Diffview",
      },
    },
    config = function()
      require("diffview").setup({
        enhanced_diff_hl = true,
      })
    end,
  },
}
