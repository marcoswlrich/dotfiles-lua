local actions = require('telescope.actions')
local ignore_these = {
  'node_modules/.*',
  '.git/.*',
  '.yarn/.*',
  '.neuron/*',
  'fonts/*',
  'icons/*',
  'images/*',
  'dist/*',
  'build/*',
  'yarn.lock',
  'package%-lock.json',
  '%.svg',
  '%.png',
  '%.jpeg',
  '%.jpg',
  '%.ico',
}

local webdev_dash_keywords = {
  'css',
  'cssmedia',
  'html',
  'htmle',
  'htmlhead',
  'httpheaders',
  'httpstatus',
  'js',
  'nextjs',
  'nodejs',
  'react',
  'scss',
  'ts',
}

local default_picker_opts = {
  file_browser = {
    prompt_title = 'working directory',
    selection_strategy = 'row',
  },
  grep_string = {
    prompt_title = 'word under cursor',
  },
  live_grep = {
    file_ignore_patterns = ignore_these,
  },
  git_commits = {
    selection_strategy = 'row',
    prompt_title = 'git log',
  },
  buffers = {
    show_all_buffers = true,
    attach_mappings = function(_, local_map)
      local_map('n', 'd', actions.delete_buffer)
      local_map('i', '<c-x>', actions.delete_buffer)
      return true
    end,
  },
  git_branches = {
    attach_mappings = function(_, local_map)
      local_map('i', '<c-o>', actions.git_checkout)
      local_map('n', '<c-o>', actions.git_checkout)
      return true
    end,
    selection_strategy = 'row',
  },
}

require('telescope').setup {
  defaults = {
    layout_config = {
      prompt_position = 'top',
      horizontal = {
        mirror = true,
        preview_cutoff = 100,
        preview_width = 0.5,
      },
      vertical = {
        mirror = true,
        preview_cutoff = 0.4,
      },
      flex = {
        flip_columns = 110,
      },
      height = 0.94,
      width = 0.86,
    },
    find_command = {
      'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'
    },
    prompt_prefix = "🔍 ",
    selection_caret = " ",
    scroll_strategy = 'cycle',
    entry_prefix = "  ",
    results_title = false,
    preview_title = "Preview",
    previewer = false,
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "flex",
    file_ignore_patterns = ignore_these,
    file_sorter = require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = {},
    winblend = 0,
    border = {},
    borderchars = { 
      {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
      prompt = {"─", "│", " ", "│", "╭", "╮", "│", "│"},
      results = {"─", "│", "─", "│", "├", "┤", "╯", "╰"},
      preview = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"} 
    },
    color_devicons = true,
    use_less = true,
    set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
    dash = {
      -- debounce while typing, in milliseconds
      debounce = 0,
      file_type_keywords = {
        TelescopePrompt = false,
        terminal = false,
        packer = false,
        -- a table of strings will search on multiple keywords
        html = { 'html', 'htmle', 'htmlhead' },
        css = { 'css', 'cssmedia' },
        scss = { 'css', 'scss' },
        javascript = webdev_dash_keywords,
        typescript = webdev_dash_keywords,
        typescriptreact = webdev_dash_keywords,
        javascriptreact = webdev_dash_keywords,
        svelte = webdev_dash_keywords,
        vue = webdev_dash_keywords,
        bash = 'bash',
        lua = { 'lua', 'neovim', 'lspconfig', 'nvimts', 'hammer' },
        go = 'go',
        vim = 'vim',
        man = 'man',
      },
    },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
      }
    }
  }
}
