local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigatorLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigatorRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigatorDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigatorUp<CR>", "window up"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

return M
