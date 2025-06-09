---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.markdown" },

  -- colorscheme
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- ai
  { import = "astrocommunity.recipes.ai" },
}
