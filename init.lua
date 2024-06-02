print("Hello SUMO")

-- Specify a directory for plugins
vim.cmd [[ call plug#begin('~/.local/share/nvim/plugged') ]]

-- Add plugins here
vim.cmd [[ Plug 'OmniSharp/omnisharp-vim' ]]
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
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.o.wrap = false
vim.o.cursorline = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.splitright = true
vim.o.splitbelow = true

-- Ensure the settings apply to different file types
vim.cmd('filetype plugin indent on')

-- Automatically insert a closing parenthesis when typing an opening parenthesis
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '\n{\n}<up><CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '((', '()<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<', '<><Left>', { noremap = true, silent = true })


--Automatically insert public when typing pub
vim.api.nvim_set_keymap('i', 'pub', 'public', { noremap = true, silent = true })

--Automatically insert public when typing pri
vim.api.nvim_set_keymap('i', 'pri', 'private', { noremap = true, silent = true })

-- Map Ctrl+A to select all text
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })

-- Map Ctrl+C to copy selected text to clipboard
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })

-- Map Ctrl+V to paste text from clipboard
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })

-- Map Ctrl+X to cut text
vim.api.nvim_set_keymap('n', '<C-x>', '"+v', { noremap = true, silent = true })

-- Map Ctrl+S to :w
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Map Ctrl+] to jump to definition using coc.nvim
vim.api.nvim_set_keymap('n', 'f12>', ':CocCommand gd<CR>', { noremap = true, silent = true })
 
-- Visual Mode tab move
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- Vex on space in normal mode
vim.api.nvim_set_keymap('n', '<space>', ':Vex<CR>', {noremap = true, silent =true})
vim.api.nvim_set_keymap('n', '<S-space>', ':Ex<CR>', {noremap = true, silent =true})

-- Shift q to quit
vim.api.nvim_set_keymap('n', '<S-q>', ':q<CR>', {noremap = true, silent =true})

-- gs in insert mode creates a getter and setter
vim.api.nvim_set_keymap('i', 'gs', '{ get => ; set =>  = value; }', {noremap = true, silent =true})

-- void auto formats   
vim.api.nvim_set_keymap('i', 'void', 'void()\n{\n}<up><CR><up><up><space>', {noremap = true, silent =true})

-- if statements auto formats
vim.api.nvim_set_keymap('i', 'if(', 'if()\n{\n}<up><up><Right><Right>', {noremap = true, silent =true})
-- if statements auto formats
vim.api.nvim_set_keymap('i', 'serf', '[SerializeField]<space>', {noremap = true, silent =true})