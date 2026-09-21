-- Color theme
vim.pack.add({
	{src = "https://github.com/slugbyte/lackluster.nvim"}
})
require("lackluster").setup({})


-- Floating terminal (Space + I)
vim.pack.add({
	{src = "https://github.com/numtostr/fterm.nvim"}
})
require("FTerm").setup({})


-- Start menu
vim.pack.add({
	{src = "https://github.com/goolord/alpha-nvim"},
})
local dashboard = require('alpha.themes.dashboard')
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "  Find file", ":FzfLua files<CR>"),
    dashboard.button("r", "  Recent files", ":FzfLua oldfiles<CR>"),
    dashboard.button("t", "󰈞  Find text", ":FzfLua live_grep<CR>"),
    dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>"),
}
dashboard.section.header.val = [[
 ____ ___ ____  _______  __
/ ___|_ _|  _ \| ____\ \/ /
\___ \| || |_) |  _|  \  / 
 ___) | ||  _ <| |___ /  \ 
|____/___|_| \_\_____/_/\_\
]]
require('alpha').setup(dashboard.config)


-- LSP manager
vim.pack.add({
	{src = "https://github.com/mason-org/mason.nvim"},
})
require("mason").setup({})


-- Double chars like () "" {} etc.
vim.pack.add({
	{src = "https://github.com/windwp/nvim-autopairs"},
})
require("nvim-autopairs").setup({})


-- Bottom bar
vim.pack.add({
	{src = "https://github.com/nvim-lualine/lualine.nvim"},
})
require('lualine').setup {
  options = {
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
	lualine_x = {'filetype'},
    lualine_y = {},
	lualine_z = {'progress'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}


-- Fuzzy finder (names and text)
vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
})
local actions = require('fzf-lua.actions')
require('fzf-lua').setup({
    winopts = { backdrop = 85 },
    keymap = {
        builtin = {
            ["<C-f>"] = "preview-page-down",
            ["<C-b>"] = "preview-page-up",
            ["<C-p>"] = "toggle-preview",
        },
        fzf = {
            ["ctrl-a"] = "toggle-all",
            ["ctrl-t"] = "first",
            ["ctrl-g"] = "last",
            ["ctrl-d"] = "half-page-down",
            ["ctrl-u"] = "half-page-up",
        }
    },
    actions = {
        files = {
            ["ctrl-q"] = actions.file_sel_to_qf,
            ["ctrl-n"] = actions.toggle_ignore,
            ["ctrl-h"] = actions.toggle_hidden,
            ["enter"]  = actions.file_edit_or_qf,
        }
    }
})


-- Complete suggestions
vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})
require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<CR>"] = { "accept", "fallback" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
    },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },
    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },
    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },
    sources = { default = { "lsp" } }
})
