return {
  "hacxy/vim-bookmarks",
  dependencies = {
    "tom-anders/telescope-vim-bookmarks.nvim",
  },
  config = function()
    vim.g.bookmark_no_default_key_mappings = 1
    vim.g.bookmark_sign = "♥"
    vim.g.bookmark_annotation_sign = "󱖮"
    vim.g.bookmark_highlight_lines = 1
    vim.g.bookmark_show_toggle_warning = 0
    require("telescope").load_extension "vim_bookmarks"
  end,
}
