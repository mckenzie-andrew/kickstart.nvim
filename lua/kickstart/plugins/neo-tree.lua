-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    filtered_items = {
      -- Show dotfiles and gitignored paths rather than reporting them as
      -- "(N hidden items)". visible keeps them listed even when a filter
      -- would apply; the hide_* flags switch those filters off outright.
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
      -- To drop just .git back out:  never_show = { ".git" },
    },
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
}
