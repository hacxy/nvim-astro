return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-_>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },

          -- 上一个和下一个Buffer 切换快捷键
          ["<S-l>"] = { "<cmd>bn<cr>", desc = "Next buffer" },
          ["<S-h>"] = { "<cmd>bp<cr>", desc = "Previous buffer" },

          ["<C-S>"] = { "<Cmd>silent! update! | redraw<CR>", desc = "Force write" },

          -- Bookmark
          ["<Leader>m"] = { desc = "♥ Bookmark" },

          ["<Leader>ma"] = {
            '<cmd>lua require("telescope").extensions.vim_bookmarks.all()<cr>',
            desc = "View all bookmark",
          },
          ["<Leader>mm"] = {
            "<cmd>BookmarkToggle<cr>",
            desc = "Toggle bookmark",
          },
          ["<Leader>mi"] = {
            "<cmd>BookmarkAnnotate<cr>",
          },
          ["ma"] = {
            '<cmd>lua require("telescope").extensions.vim_bookmarks.all()<cr>',
            desc = "View all bookmark",
          },
        },
        t = {
          ["<C-_>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
        },
        i = {
          ["<C-_>"] = { "<Esc><Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<C-S>"] = { "<Esc><Cmd>silent! update! | redraw<CR>", desc = "Force write" },
        },
        x = {
          ["<C-S>"] = { "<Esc><Cmd>silent! update! | redraw<CR>", desc = "Force write" },
        },

        -- keymap.set("n", "ma", '<cmd>lua require("telescope").extensions.vim_bookmarks.all()<cr>')
        -- keymap.set("n", "mc", '<cmd>lua require("telescope").extensions.vim_bookmarks.current_file()<cr>')
      },
    },
  },
}
