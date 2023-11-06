
if vim.g.vscode then
    vim.keymap.set("n", "<C-a>", ":normal! ggVG<CR>", { noremap = true, silent = true }) -- ctrl+aで全選択
	--- vim.keymap.set('v', '<C-c>', '"*y', { noremap = true, silent = true })            -- vscodeだと機能しない

	local opt = vim.opt

	opt.clipboard = 'unnamedplus' -- yankでクリップボードに

else
    local opt = vim.opt

    opt.mouse = 'a'

    opt.ambiwidth = 'double'

    opt.swapfile = false
    opt.backup = false
    opt.hidden = true
    opt.clipboard:append({unnamedplus = true})

    -- opt.number = true
    opt.number = false 
    opt.list = true
    opt.listchars = {tab = '>-', trail = '*', nbsp = '+'}
    opt.smartindent = true
    opt.visualbell = true

    opt.showmatch = true

    opt.expandtab = true
    opt.tabstop = 4
    opt.shiftwidth = 4

    opt.ignorecase = true
    opt.smartcase = true
    opt.wrapscan = true

    opt.whichwrap = 'b', 's', 'h', 'l', '<', '>', '[', ']'
    opt.backspace = 'start', 'eol', 'indent'

    opt.fileformats = 'dos', 'unix', 'mac'

    opt.helplang = 'ja', 'en'

    opt.updatetime = 300

    opt.showtabline = 2

end