return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right", -- Moves the file explorer to the right side
        width = 40, -- Adjust to your preferred width
      },
    })
  end,
}
