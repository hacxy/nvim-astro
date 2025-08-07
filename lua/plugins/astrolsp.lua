---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts

  opts = function(_plugin, opts)
    local prettier_configs = {
      ".prettierrc",
      ".prettierrc.json",
      ".prettierrc.js",
      ".prettierrc.cjs",
      ".prettierrc.yaml",
      ".prettierrc.yml",
      ".prettierrc.toml",
    }

    local has_prettier_config = false
    local project_root = vim.fn.getcwd()

    for _, config_file in ipairs(prettier_configs) do
      if vim.fn.filereadable(project_root .. "/" .. config_file) == 1 then
        has_prettier_config = true
        break
      end
    end
    -- If package.json exists, check if it contains prettier config
    if not has_prettier_config and vim.fn.filereadable(project_root .. "/package.json") == 1 then
      local package_json = vim.fn.readfile(project_root .. "/package.json")
      local package_content = table.concat(package_json, "\n")
      if package_content:match '"prettier"' then has_prettier_config = true end
    end

    opts.config.stylelint_lsp = {
      settings = {
        stylelintplus = {
          autoFixOnSave = true,
          autoFixOnFormat = true,
          validateOnSave = true,
        },
      },
    }

    -- Only add ESLint config if no Prettier config is found
    if not has_prettier_config then
      opts.config.eslint = {
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
      }
    end
  end,
}
