local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"


vim.g.mapleader = " "       -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
  "editorconfig/editorconfig-vim",
  "folke/neoconf.nvim",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  "HiPhish/rainbow-delimiters.nvim",
  "tpope/vim-commentary",
  -- "tpope/vim-surround",
  -- "tpope/vim-repeat",
  "Wansmer/langmapper.nvim",    -- Команды на русском языке
  "powerman/vim-plugin-ruscmd", -- Команды на русском языке
  "psliwka/vim-smoothie",       -- замедленная прокрутка, более приятная
  "camspiers/animate.vim",
  "camspiers/lens.vim",
  "mechatroner/rainbow_csv",
  "rstacruz/vim-closer",
  "nvim-lua/plenary.nvim",
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    depedencies = { { "nvim-lua/plenary.nvim" } },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build =
    "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },

  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/nvim-treesitter-context",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "neovim/nvim-lspconfig",
  "simrat39/rust-tools.nvim",

  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lua",
  "hrsh7th/cmp-nvim-lsp-signature-help",

  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",

  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  { "lukas-reineke/indent-blankline.nvim", commit = "9637670" },
  "voldikss/vim-floaterm",
  "will133/vim-dirdiff",
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
  },
  {
    "nvim-lualine/lualine.nvim",
    depedencies = { "nvim-tree/nvim-web-devicons" },
  },
  "nvimtools/none-ls.nvim",
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  -- "mfussenegger/nvim-lint",
  "mfussenegger/nvim-dap",
  "mfussenegger/nvim-dap-python",
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  "lewis6991/gitsigns.nvim",
  "tpope/vim-fugitive"
})
