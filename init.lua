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

--vim options
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
vim.o.autoindent = true
vim.o.ruler = true
vim.o.scrolloff = 25 

-- Ensure the settings apply to different file types
vim.cmd('filetype plugin indent on')

-- Automatically insert a closing parenthesis when typing an opening parenthesis and if double tap starting bracket insert closing and put cursor to the right
vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '((', '()<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[[', '[]<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '""', '""<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<', '<><Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<<', '<><Right>', { noremap = true, silent = true })

-- Automatically format curly brackets
vim.api.nvim_set_keymap('i', '{', '\n{\n}<up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{ ', '}<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{{', '}<Left>', { noremap = true, silent = true })

--Automatically insert public when typing pub
vim.api.nvim_set_keymap('i', 'pub', 'public ', { noremap = true, silent = true })

--Automatically insert private when typing pri
vim.api.nvim_set_keymap('i', 'pri', 'private ', { noremap = true, silent = true })

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
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w<CR>', { noremap = true, silent = true })

-- Visual Mode tab move
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })

-- Vex on space in normal mode
vim.api.nvim_set_keymap('n', '<space>', ':Vex<CR>', {noremap = true, silent =true})

-- ex on  n in normal mode 
vim.api.nvim_set_keymap('n', '<S-n>', ':Ex<CR>', {noremap = true, silent = true})

-- Shift q to quit
vim.api.nvim_set_keymap('n', '<S-q>', ':q<CR>', {noremap = true, silent =true})
-- Shift t to open new tab
vim.api.nvim_set_keymap('n', '<S-t>', '<C-w><S-T>', {noremap = true, silent =true})

-- gs in insert mode creates a getter and setter
vim.api.nvim_set_keymap('i', 'gese', '{ get => ; set =>  = value; }', {noremap = true, silent =true})

-- if statements auto formats
vim.api.nvim_set_keymap('i', 'if(', 'if()\n{\n}<up><up><Right><Right>', {noremap = true, silent =true})
-- [SerializeField] auto Type
vim.api.nvim_set_keymap('i', 'serf', '[SerializeField]<space>', {noremap = true, silent =true})

-- for autocompletion
vim.api.nvim_set_keymap('i', 'for(', 'for(int i = 0; i < x; i++)<CR>{<CR>}<up><up>', {noremap = true, silent =true})

-- GoToDefinition
vim.api.nvim_set_keymap('n', 'gd', ':call CocActionAsync("jumpDefinition", "vsplit")<CR>', {noremap =true, silent=true})

--GoToDefinition but do not split windows
vim.api.nvim_set_keymap('n', 'dg', ':call CocActionAsync("jumpDefinition")<CR>', {noremap =true, silent=true})

-- Find all refernces 
vim.api.nvim_set_keymap("n", "gr",":call CocActionAsync('jumpReferences', 'vsplit')<CR>", {noremap=true, silent=true})

-- Rename Varibale
vim.api.nvim_set_keymap("n","<C-n>", ":call CocActionAsync('rename')<CR>", {noremap=true, silent=true})

--Rebind : to ;
vim.api.nvim_set_keymap("n",";", ":", {noremap=true, silent=true})

--Bind Format File to F
vim.api.nvim_set_keymap("n", "<S-f>", ":call CocActionAsync('format')<CR>", {noremap=true, silent=true})

--Bind ; in input mode to append ; at the end of the line everytime

vim.api.nvim_set_keymap("i",";","<ESC><S-a>;<ESC>",{noremap=true, silent=true})

-- make the window biger vertically
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]],{noremap=true, silent=true}) 

-- make the window smaller vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]],{noremap=true, silent=true})

 -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]],{noremap=true, silent=true}) 

-- make the window smaller horizontally by pressing shift and -
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]],{noremap=true, silent=true}) 

-- bind wt to create new window
vim.api.nvim_set_keymap("n","wt",":tabnew<cr>",{noremap=true, silent=true})
