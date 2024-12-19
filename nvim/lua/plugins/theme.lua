return {

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Enable transparent background
        transparent = true, -- Set this to true for transparency
        italic_comments = false,
        borderless_telescope = true,
        terminal_colors = true,
      })
      vim.cmd("colorscheme cyberdream")
    end,
  },
}

--[[
--
return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = "dark" -- Or 'light' for Solarized Light
      require("solarized").setup(opts)
      vim.cmd.colorscheme("solarized")
    end,
  },
}
]]
