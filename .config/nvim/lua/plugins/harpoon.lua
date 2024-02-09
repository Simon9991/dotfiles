return {
  {
    "ThePrimeagen/harpoon",
    config = function()
      require("harpoon").setup({
        global_settings = {
          save_on_toggle = true,
          save_on_change = true,
        },
      })
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Set key bindings
      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Add File" })
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon: Toggle Quick Menu" })

      vim.keymap.set("n", "<C-h>", function()
        ui.nav_file(1)
      end, { desc = "Harpoon: Navigate to File 1" })
      vim.keymap.set("n", "<C-t>", function()
        ui.nav_file(2)
      end, { desc = "Harpoon: Navigate to File 2" })
      vim.keymap.set("n", "<C-n>", function()
        ui.nav_file(3)
      end, { desc = "Harpoon: Navigate to File 3" })
      vim.keymap.set("n", "<C-s>", function()
        ui.nav_file(4)
      end, { desc = "Harpoon: Navigate to File 4" })
    end,
  },
}
