-- Atom's One Dark.
--
-- The cdev container drops this file into your kickstart fork at
--   ~/.config/nvim/lua/custom/plugins/colorscheme.lua
-- and uncomments the matching `require` near the bottom of init.lua. Both
-- changes are left UNCOMMITTED so you can review them:
--
--   git -C ~/.config/nvim diff
--   git -C ~/.config/nvim status
--
-- Commit them and the theme follows you everywhere, including Neovim outside
-- the container. Discard them and you are back to kickstart's tokyonight.
--
-- Note: `gh` in init.lua is a *local* helper, so it is not in scope here. The
-- plugin URL is spelled out in full instead.

vim.pack.add { 'https://github.com/navarasu/onedark.nvim' }

require('onedark').setup {
  -- 'dark' is the closest match to Atom's original One Dark. The plugin also
  -- ships: 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'.
  style = 'dark',

  -- kickstart deliberately turns italic comments off for its default theme.
  -- Matching that here keeps this change about colour only.
  code_style = {
    comments = 'none',
  },
}

require('onedark').load()
