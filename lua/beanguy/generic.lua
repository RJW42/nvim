-- Numbers
vim.cmd("set rnu nu")
vim.cmd([[
    set tabstop=4
    set shiftwidth=4
    set smarttab
    set expandtab
]])

-- Whitespace
vim.o.list = true
vim.o.listchars = 'tab:» ,lead:·,trail:·,leadmultispace:· '

-- Scroll
vim.o.scrolloff = 20
