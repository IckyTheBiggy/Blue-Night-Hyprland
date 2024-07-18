-- Lazy Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Plugins To Install
local plugins =
{
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},

    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},

    {
        'L3MON4D3/LuaSnip',
        dependencies ={
            'saadparwaizi/cmp_luasnip',
            'rafamadriz/friendly-snippets'
        }
    },

    {'hrsh7th/cmp-nvim-lsp'},
}

local opts = {}

require("lazy").setup(plugins, opts)

-- Plugin require stuff
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

local config = require("nvim-treesitter.configs")
config.setup(
{
    ensure_installed = {"lua", "c_sharp", "cpp", "cmake", "glsl"},
    highlight = { enable = true },
    indent = { enable = true },
})

require("mason").setup()
require("mason-lspconfig").setup(
{
        ensure_installed = { "lua_ls", "clangd" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- For luasnip users.
        }, {
          { name = "buffer" },
        }),
      })

-- Tab Size
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.g.neovide_padding_top = 10
vim.g.neovide_padding_bottom = 10
vim.g.neovide_padding_right = 10
vim.g.neovide_padding_left = 10
vim.g.neovide_transparency = 0.8
vim.g.neovide_refresh_rate = 240
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = false
vim.g.neovide_cursor_smooth_blink = true
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_particle_lifetime = 1
vim.g.neovide_cursor_vfx_particle_density = 500
vim.g.neovide_cursor_vfx_particle_speed = 100.0

-- Auto Indent
vim.opt.autoindent = true

-- Syntax
vim.cmd('syntax on')

-- Mouse Support
vim.opt.mouse = 'a'

-- Make Nvim Use Terminal Colors
vim.opt.termguicolors = true
vim.opt.background = 'dark'

-- Control + Backspace Delte The Whole Word Behind
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-w>', { noremap = true })

-- Syntax Colors
vim.cmd('highlight Comment guifg=#6FA5C7')
vim.cmd('highlight String guifg=#6FA5C7')
vim.cmd('highlight Keyword guifg=#182833')
vim.cmd('highlight Type guifg=#65b3e2')
vim.cmd('highlight Function guifg=#72965c')
vim.cmd('highlight Identifier guifg=#65b3e2')
vim.cmd('highlight Constant guifg=#72965c')
vim.cmd('highlight Operator guifg=#72965c')
vim.cmd('highlight Error guifg=#bf616a')
vim.cmd('highlight Special guifg=#487AA3')
vim.cmd('highlight PreProc guifg=#487AA3')
vim.cmd('highlight Statement guifg=#65b3e2')
vim.cmd('highlight Include guifg=#487AA3')
vim.cmd('highlight Number guifg=#ffffff')
vim.cmd('highlight Boolean guifg=#487AA3')
