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
      eslint = {
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
          "vue",
          "html",
          "markdown",
          "json",
          "jsonc",
          "yaml",
          "toml",
          "xml",
          "gql",
          "graphql",
          "astro",
          "svelte",
          "css",
          "less",
          "scss",
          "pcss",
          "postcss",
        },
        settings = {
          -- Silent the stylistic rules in you IDE, but still auto fix them
          rulesCustomizations = {
            { rule = "style/*", severity = "on", fixable = true },
            { rule = "format/*", severity = "on", fixable = true },
            { rule = "*-indent", severity = "on", fixable = true },
            { rule = "*-spacing", severity = "on", fixable = true },
            { rule = "*-spaces", severity = "on", fixable = true },
            { rule = "*-order", severity = "on", fixable = true },
            { rule = "*-dangle", severity = "on", fixable = true },
            { rule = "*-newline", severity = "on", fixable = true },
            { rule = "*quotes", severity = "on", fixable = true },
            { rule = "*semi", severity = "on", fixable = true },
          },
        },
      },
    },
  },
}
