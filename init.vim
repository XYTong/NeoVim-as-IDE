" 基础设置
lua require('basic')
" Packer插件管理
lua require('plugins')
" 快捷键映射
lua require('keybindings')
" 皮肤设置
" https://github.com/ellisonleao/gruvbox.nvim
set background=dark " or light if you want light mode
colorscheme gruvbox

" 插件配置
"lua require('plugin-config/which-key')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/telescope')
lua require('plugin-config/nvim-autopairs')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
"lua require('plugin-config/surround')
lua require('plugin-config/comment')
lua require('plugin-config/nvim-colorizer')
"lua require('plugin-config/rust-tools')

" lsp
"lua require('lsp/nvim-cmp-config')
lua require('lsp/setup')
lua require('lsp/nvim-cmp')
lua require('lsp/ui')
lua require('lsp/nvim-lspconfig')
"lua require('lsp/diagnostic_signs')
"lua require('lsp/language_servers')
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()
