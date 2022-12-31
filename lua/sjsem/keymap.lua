local keymap = vim.keymap

local function nmap(lhs, rhs, opts)
    keymap.set("n", lhs, rhs, opts)
end

local function imap(lhs, rhs, opts)
    keymap.set("i", lhs, rhs, opts)
end

local function vmap(lhs, rhs, opts)
    keymap.set("v", lhs, rhs, opts)
end

nmap("<leader>pv", vim.cmd.Ex)

vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")

nmap("J", "mzJ`z")
nmap("<C-d>", "<C-d>zz")
nmap("<C-u>", "<C-u>zz")
nmap("n", "nzzzv")
nmap("N", "Nzzzv")

keymap.set("x", "<leader>p", "\"_dP")

nmap("<leader>y", "\"+y")
vmap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

-- Default to deleting to void
nmap("<leader>d", "d")
vmap("<leader>d", "d")
nmap("d", "\"_d")
vmap("d", "\"_d")

nmap("Q", "<nop>")
nmap("<leader>f", function()
    vim.lsp.buf.format()
end)

nmap("<C-k>", "<cmd>cnext<CR>zz")
nmap("<C-j>", "<cmd>cprev<CR>zz")
nmap("<leader>k", "<cmd>lnext<CR>zz")
nmap("<leader>j", "<cmd>lprev<CR>zz")

nmap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nmap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
