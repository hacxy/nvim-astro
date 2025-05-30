---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      -- Linux input method auto switch
      autoSwithInputMethod = {
        {
          -- event is added here as a string or a list-like table of events
          event = "InsertLeave",
          -- the rest of the autocmd options (:h nvim_create_autocmd)
          desc = "Ibus keep english",
          callback = function()
            local has_system_command = vim.fn.executable "fcitx5-remote" == 1
            if has_system_command then os.execute "fcitx5-remote -c" end
          end,
        },
        {
          event = "InsertEnter",
          desc = "Ibus keep english",
          callback = function()
            local has_system_command = vim.fn.executable "fcitx5-remote" == 1
            if has_system_command then os.execute "fcitx5-remote -c" end
          end,
        },
      },
    },
    -- 配置根目录匹配规则
    rooter = {
      detector = {
        "lsp", -- highest priority is getting workspace from running language servers
        { ".git", "_darcs", ".hg", ".bzr", ".svn" }, -- next check for a version controlled parent directory
        { "lua", "MakeFile", "package.json" }, -- lastly check for known project root files
      },
      -- ignore things from root detection
      -- automatically update working directory (update manually with `:AstroRoot`)
      autochdir = true,
      -- scope of working directory to change ("global"|"tab"|"win")
      scope = "global",
      -- show notification on every working directory change
      notify = false,
    },
  },
}
