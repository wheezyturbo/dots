return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      git = {
        enable = true,
        ignore = false,
      },
      view = {
        width = 50,
        side = "left",
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    },
    cmd = "NvimTreeToggle", -- This ensures the plugin loads only when the command is used
  },
}   
