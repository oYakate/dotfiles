return {
--colorschemes


{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

{
  'comfysage/evergarden',
  --priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
  opts = {
    transparent_background = true,
    contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
    overrides = { }, -- add custom overrides
  }
},
{
  "nyoom-engineering/oxocarbon.nvim",
  config = function()
    require("oxocarbon")
  end,
},
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 10000,
  opts = {},
},

'Mofiqul/dracula.nvim',



--syntax highlighting

"nvim-treesitter/nvim-treesitter",



  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },

--dashboard
{
    "echasnovski/mini.starter",
    lazy = false,
    config = true,
    opts = {
      header = "⚡ Neovim",
      footer = "",
      items = {
        { name = "n New file",        action = ":ene | startinsert",                 section = "" },
        { name = "r Recent files",    action = ":Telescope oldfiles",                section = "" },
        { name = "f Find files",      action = ":Telescope find_files",              section = "" },
        { name = "l Lazy",            action = ":Lazy",                              section = "" },
        { name = "s Restore session", action = ":lua require('persistence').load()", section = "" },
        { name = "q Quit",            action = ":qa!",                               section = "" },
      },
    },
  },

--lualine
 {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "lualine.themes.bubbles",
          disabled_filetypes = {
            statusline = { "dashboard", "alpha", "ministarter" },
          },
        },
      })
    end,
  },

-- NvimTree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        diagnostics = {
          enable = false,
          show_on_dirs = false,
        },
        view = {
          width = 25,
          side = "left",
        },
      })
    end,
    keys = {
      { "<f8>", "<CMD>NvimTreeToggle<CR>", desc = "Toggle nvim tree" },
    },
  },
-- cololizer (for hex and rgb)
"norcalli/nvim-colorizer.lua",
"ms-jpq/coq_nvim",


{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' },
     keys = {
      { "<f5>", "<CMD>Telescope find_files<CR>", desc = "Browse files with telescope" },
      { "<f6>", "<CMD>Telescope find_files hidden=true<CR>", desc = "Browse files with telescope (also shows the hidden ones)" },
      { "<f4>", "<CMD>Telescope colorscheme<CR>", desc = "Toggle nvim tree" },
     },
 },


{
  'akinsho/bufferline.nvim', 
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',

  options = {
    indicator = {
      style = 'underline'
    },
  },

},
--lsp (autosuggestions)
--{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
--{'neovim/nvim-lspconfig'},
--{'hrsh7th/cmp-nvim-lsp'},
--{'hrsh7th/nvim-cmp'},
{"neoclide/coc.nvim", branch="release"};


--file end
}




