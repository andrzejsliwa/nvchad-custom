-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
        ["+"] = "./win32yank.exe -i --crlf",
        ["*"] = "./win32yank.exe -i --crlf",
    },
    paste = {
        ["+"] = "./win32yank.exe -o --lf",
        ["*"] = "./win32yank.exe -o --lf",
    },
    cache_enabled = true,
}
