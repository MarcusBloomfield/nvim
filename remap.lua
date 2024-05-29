local M = {}

-- Helper function for setting key mappings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Define your key mapping functions
function M.nnoremap(lhs, rhs, opts)
    map('n', lhs, rhs, opts)
end

function M.inoremap(lhs, rhs, opts)
    map('i', lhs, rhs, opts)
end

function M.vnoremap(lhs, rhs, opts)
    map('v', lhs, rhs, opts)
end

function M.xnoremap(lhs, rhs, opts)
    map('x', lhs, rhs, opts)
end

function M.tnoremap(lhs, rhs, opts)
    map('t', lhs, rhs, opts)
end

return M
