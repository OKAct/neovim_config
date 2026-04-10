vim.opt.termguicolors = true
vim.o.background = "dark"

	
vim.keymap.set({"n","i"},"<C-x>","<Esc>gti")	
vim.keymap.set("i", "<C-z>", "<Esc>ua", { silent = true })
vim.keymap.set("i","<C-d>","<Esc>",{silent=true})
vim.keymap.set("i","(","()<Left>",{noremap=true})
vim.keymap.set("i","{","{}<Left>",{noremap=true})
vim.keymap.set("i",'"','""<Left>',{noremap=true})
vim.keymap.set("n", "<C-h>", "db", { noremap = true, silent = true })
vim.keymap.set("i", "<C-h>", "<Esc>dbi", { noremap = true, silent = true })
vim.keymap.set("i","[","[]<LEFT>",{noremap=true})
vim.keymap.set("i","<C-t>","<Esc>:w! | bel sp |terminal<CR>i")
vim.keymap.set("i","<CR>","<CR><CR><UP><TAB>",{noremap=true})


vim.opt.number=true

-- Load Packer
require("packer").startup(function(use)
    use "wbthomason/packer.nvim"  -- Packer manages itself
    use "folke/tokyonight.nvim"   -- Tokyo Night theme
end)

-- Configure Tokyo Night
require("tokyonight").setup({
    style = "night",
    transparent = false,
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
    },
})

vim.cmd("colorscheme tokyonight")

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- For WSL, point to win32yank.exe
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end

