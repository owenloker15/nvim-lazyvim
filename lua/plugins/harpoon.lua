return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      local function harpoon_file(index)
        local item = harpoon:list():get(index)

        if not item then
          return "Empty"
        end

        return vim.fn.fnamemodify(item.value, ":t")
      end

      local wk = require("which-key")

      wk.add({
        { "<leader>h", group = "Harpoon" },

        {
          "<leader>ha",
          function()
            harpoon:list():add()
          end,
          desc = "Add File",
        },

        {
          "<leader>hl",
          function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon Menu",
        },

        {
          "<leader>h1",
          function()
            harpoon:list():select(1)
          end,
          desc = function()
            return harpoon_file(1)
          end,
        },

        {
          "<leader>h2",
          function()
            harpoon:list():select(2)
          end,
          desc = function()
            return harpoon_file(2)
          end,
        },

        {
          "<leader>h3",
          function()
            harpoon:list():select(3)
          end,
          desc = function()
            return harpoon_file(3)
          end,
        },

        {
          "<leader>h4",
          function()
            harpoon:list():select(4)
          end,
          desc = function()
            return harpoon_file(4)
          end,
        },

        {
          "<leader>hp",
          function()
            harpoon:list():prev()
          end,
          desc = "Previous",
        },

        {
          "<leader>hn",
          function()
            harpoon:list():next()
          end,
          desc = "Next",
        },
      })
    end,
  },
}
