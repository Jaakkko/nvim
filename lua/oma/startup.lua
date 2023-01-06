local Path = require "plenary.path"
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local recent_dirs_path = Path:new(vim.fn.stdpath("cache")):joinpath("recent_dirs"):absolute()

local get_recent_dirs = function()
    local recent_dirs = {}
    if vim.fn.filereadable(recent_dirs_path) == 1 then
      recent_dirs = vim.fn.readfile(recent_dirs_path)
    end
    return recent_dirs
end

vim.api.nvim_create_autocmd("DirChanged", {
  pattern = "global",
  callback = function (args)
    local recent_dirs = get_recent_dirs()
    if #recent_dirs >= vim.g.recent_dirs_size then
      table.remove(recent_dirs, 1)
    end
    for k,v in pairs(recent_dirs) do
      if v == args.file then
        table.remove(recent_dirs, k)
      end
    end
    table.insert(recent_dirs, args.file)
    vim.fn.writefile(recent_dirs, recent_dirs_path)
  end,
})

vim.api.nvim_create_user_command(
  "RecentDirs",
  function ()
    local fzy = require "telescope.algos.fzy"
    local score = fzy.score
    fzy.score = function(...) return -score(...) end
    local recent_dirs = get_recent_dirs()
    if #recent_dirs == 0 then
      return
    end
    pickers.new(fzy, {
      prompt_title = "Recent directories",
      finder = finders.new_table {
        results = recent_dirs
      },
      sorter = conf.file_sorter(),
      attach_mappings = function(prompt_bufnr)
        actions.close:enhance({
          post = function()
            fzy.score = score
          end
        })
        actions.select_default:replace(function()
          actions.close(prompt_bufnr)
          local selection = action_state.get_selected_entry()
          vim.fn.chdir(selection[1])
        end)
        return true
      end,
    }):find()
  end,
  { desc = "Telescope to recent directory" }
)

vim.api.nvim_create_autocmd("VimEnter", {
  command = "RecentDirs"
})

-- Do not show [Process exited]
-- vim.api.nvim_create_autocmd("TermClose", {
--   pattern = "*",
--   command = "execute 'bdelete! ' . expand('<abuf>')"
-- })
