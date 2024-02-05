return {
  'lewis6991/impatient.nvim',
  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim',  opts = {} },
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  'preservim/nerdcommenter',
  -- Delete buffer and preserve window layout
  {
    'ojroques/nvim-bufdel',
    cmd = 'BufDel',
    opts = {}
  },
  { 'chaoren/vim-wordmotion', event = 'VeryLazy' },
  {
    'andymass/vim-matchup',
    init = function()
      require 'config.matchup'
    end,
    event = 'VeryLazy',
  },
  {
    'ggandor/leap.nvim',
    event = 'VeryLazy',
    dependencies = 'tpope/vim-repeat',
    config = function()
      require('leap').add_default_mappings()
    end
  },
  'ggandor/flit.nvim',
  'nvim-tree/nvim-tree.lua',
  'terryma/vim-expand-region',
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  }
}
