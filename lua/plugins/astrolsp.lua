---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    servers = { "stylelint_lsp" },
    ---@diagnostic disable: missing-fields
    config = {
      stylelint_lsp = {
        settings = {
          stylelintplus = {
            autoFixOnSave = true,
            autoFixOnFormat = true,
            validateOnSave = true,
          },
        },
      },
    },
  },
}
