return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>l"] = false,
          ["<Leader>bd"] = { function() require("astrocore.buffer").close() end, desc = "Close buffer" },
          ["<C-_>"] = { '<Cmd>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },

          -- 上一个和下一个Buffer 切换快捷键
          ["<S-l>"] = { "<cmd>bn<cr>", desc = "Next buffer" },
          ["<S-h>"] = { "<cmd>bp<cr>", desc = "Previous buffer" },

          ["<C-S>"] = { "<Cmd>silent! update! | redraw<CR>", desc = "Force write" },

          ["<leader>c"] = false,
        },
        t = {
          ["<C-_>"] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<Esc><Esc>"] = { [[<C-\><C-n>]] },
        },
        i = {
          ["<C-_>"] = { "<Esc><Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<C-S>"] = { "<Esc><Cmd>silent! update! | redraw<CR>", desc = "Force write" },
        },
        x = {
          ["<Leader>l"] = false,
          ["<leader>c"] = false,
          ["<C-S>"] = { "<Esc><Cmd>silent! update! | redraw<CR>", desc = "Force write" },
        },
        v = {
          ["<leader>c"] = false,
        },

        -- keymap.set("n", "ma", '<cmd>lua require("telescope").extensions.vim_bookmarks.all()<cr>')
        -- keymap.set("n", "mc", '<cmd>lua require("telescope").extensions.vim_bookmarks.current_file()<cr>')
      },
    },
  },

  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>l"] = false,
          ["<Leader>c"] = { desc = require("astroui").get_icon("ActiveLSP", 1, true) .. "Code Actions" },
          ["<Leader>ca"] = {
            function() vim.lsp.buf.code_action() end,
            desc = "LSP code action",
          },

          ["<Leader>cA"] = {
            function() vim.lsp.buf.code_action { context = { only = { "source" }, diagnostics = {} } } end,
            desc = "LSP source action",
            cond = "textDocument/codeAction",
          },

          ["<Leader>cl"] = {
            function() vim.lsp.codelens.refresh() end,
            desc = "LSP CodeLens refresh",
            cond = "textDocument/codeLens",
          },

          ["<Leader>cL"] = {
            function() vim.lsp.codelens.run() end,
            desc = "LSP CodeLens run",
            cond = "textDocument/codeLens",
          },

          ["<Leader>cr"] = {
            function() vim.lsp.buf.rename() end,
            desc = "Rename current symbol",
            cond = "textDocument/rename",
          },
          ["<Leader>cR"] = {
            function() vim.lsp.buf.references() end,
            desc = "Search references",
            cond = "textDocument/references",
          },

          ["<Leader>cf"] = {
            function() vim.lsp.buf.format(require("astrolsp").format_opts) end,
            desc = "Format buffer",
          },
        },
        x = {
          ["<Leader>l"] = false,
          ["<Leader>c"] = { desc = require("astroui").get_icon("ActiveLSP", 1, true) .. "Code Actions" },
          ["<Leader>ca"] = {
            function() vim.lsp.buf.code_action() end,
            desc = "LSP code action",
          },
        },
        v = {
          ["<Leader>c"] = { desc = require("astroui").get_icon("ActiveLSP", 1, true) .. "Code Actions" },
          ["<Leader>cf"] = {
            function() vim.lsp.buf.format(require("astrolsp").format_opts) end,
            desc = "Format buffer",
          },
        },
      },
    },
  },
}
