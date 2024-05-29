-- Print "Hello SUMO"
print("Hello SUMO")

-- Specify a directory for plugins
vim.cmd [[ call plug#begin('~/.local/share/nvim/plugged') ]]

-- Add plugins here
vim.cmd [[ Plug 'OmniSharp/omnisharp-vim' ]]
vim.cmd [[ Plug 'morhetz/gruvbox' ]]
vim.cmd [[ Plug 'neoclide/coc.nvim', {'branch': 'release'} ]]
vim.cmd [[ call plug#end() ]]

-- Set line numbers to enabled
vim.opt.number = true

-- Enable CoC (Conqueror of Completion) for autocompletion and language server support
vim.g.coc_global_extensions = { 'coc-omnisharp' }

-- Set colorscheme
vim.cmd [[ colorscheme MarcusColorScheme ]]

-- Tab completion setup
vim.cmd [[
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-space> coc#refresh()
]]

-- Auto-completion for the omnisharp server
vim.cmd [[
augroup coc
  autocmd!
  autocmd FileType cs setlocal omnifunc=v:lua.vim.lsp.omnifunc
augroup END
]]

-- Set tab width to 2 spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

-- Ensure the settings apply to different file types
vim.cmd('filetype plugin indent on')
