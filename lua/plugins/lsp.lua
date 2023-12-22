return {
    {
        "neovim/nvim-lspconfig",
        config = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup({})
          lspconfig.rust_analyzer.setup({})
    
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
          vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
          vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
          end, {})
        end
    }
}