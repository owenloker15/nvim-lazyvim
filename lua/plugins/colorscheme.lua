return {
  {
    "owenloker15/custom-vsassist.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("custom-vsassist")
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
