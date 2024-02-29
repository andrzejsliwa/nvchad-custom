---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>g"] = { "<cmd> Neogit <CR>", "Git" },

    ["<leader>sv"] = { "<cmd> split <CR>"},
    ["<leader>sh"] = { "<cmd> vsplit <CR>"}

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
