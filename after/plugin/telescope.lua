local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")


vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") }); 
end)
vim.keymap.set("n", "<leader>s", "<cmd>Telescope live_grep<cr>", {} )

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
   defaults = {
      layout_strategy = "vertical",
      mappings = {
         n = {
            ["q"] = actions.close
         },
      },
   },
   extensions = {
      file_browser = {
         theme = "ivy",
         mappings = {
            --    -- your custom insert mode mappings
            ["i"] = {
               ["<C-n>"] = actions.move_selection_next,
               ["<C-p>"] = actions.move_selection_previous,

               -- ["<C-c>"] = actions.close,

               ["<Down>"] = actions.move_selection_next,
               ["<Up>"] = actions.move_selection_previous,

               --       ["<C-w>"] = function() vim.cmd('normal vbd') end,
               ["<C-x>"] = actions.select_horizontal,
            },
            ["n"] = {
               ["<C-x>"] = actions.select_horizontal,
               ["<C-v>"] = actions.select_vertical,
               --       ["<C-t>"] = actions.select_tab,
               --       ["j"] = actions.move_selection_next,
               --       ["k"] = actions.move_selection_previous,
               --       -- your custom normal mode mappings
               ["<Space>n>"] = fb_actions.create,
               --       -- ["h"] = fb_actions.goto_parent_dir,
               --       ["/"] = function()
               --          vim.cmd('startinsert')
               -- end
            },
         },
      },

      media_files = {
         filetypes = {"png", "webp", "jpg", "jpeg", "gif"}
      }
   },

}


-- vim.keymap.set('n', 'ff',
--   function()
--     builtin.find_files({
--       no_ignore = false,
--       hidden = true
--     })
--   end)
-- vim.keymap.set('n', 'fg', function()
--   builtin.live_grep()
-- end)
-- vim.keymap.set('n', 'fb', function()
--   builtin.buffers()
-- end)
-- vim.keymap.set('n', 'fh', function()
--   builtin.help_tags()
-- end)
-- vim.keymap.set('n', ';;', function()
-- builtin.resume()
-- end)
-- vim.keymap.set('n', ';e', function()
-- builtin.diagnostics()
-- end)

-- Load telescope-file-browser
telescope.load_extension("file_browser")
telescope.load_extension('media_files')


vim.keymap.set("n", "<space>fb", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    -- previewer = false,
    initial_mode = "normal",
    -- layout_config = { height = 40 }
  })
end)


local builtin = require('telescope.builtin')


