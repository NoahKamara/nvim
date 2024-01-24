let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <C-B>mÞ <Nop>
inoremap <silent> <C-B>qÞ <Nop>
inoremap <silent> <C-B>cÞ <Nop>
inoremap <silent> <C-B>Þ <Nop>
inoremap <silent> <C-B> <Cmd>lua require("which-key").show("\2", {mode = "i", auto = true})
inoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent> <C-R> <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> <C-B>ql <Cmd>BufferLineCloseRight
inoremap <silent> <C-B>qh <Cmd>BufferLineCloseLeft
inoremap <silent> <C-B>qq <Cmd>BufferLineCloseOthers
inoremap <silent> <C-B>mh <Cmd>BufferLineMovePrev
inoremap <silent> <C-B>ml <Cmd>BufferLineMoveNext
inoremap <silent> <C-B>ch <Cmd>BufferLineCyclePrev
inoremap <silent> <C-B>cl <Cmd>BufferLineCycleNext
inoremap <silent> <C-B>p <Cmd>BufferLineTogglePin
inoremap <silent> <C-S-C> <Cmd>ToggleTerm
inoremap <silent> <C-S-C> <Cmd>ToggleTerm
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <C-W> u
inoremap <C-U> u
nnoremap <silent> mÞ <Nop>
nnoremap <silent> qÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\2", {mode = "n", auto = true})
nnoremap <silent> ql <Cmd>BufferLineCloseRight
nnoremap <silent> qh <Cmd>BufferLineCloseLeft
nnoremap <silent> qq <Cmd>BufferLineCloseOthers
nnoremap <silent> mh <Cmd>BufferLineMovePrev
nnoremap <silent> ml <Cmd>BufferLineMoveNext
nnoremap <silent> ch <Cmd>BufferLineCyclePrev
nnoremap <silent> cl <Cmd>BufferLineCycleNext
nnoremap <silent> p <Cmd>BufferLineTogglePin
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  Þ <Nop>
vnoremap <silent>   <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent> !iÞ <Nop>
nnoremap <silent> !aÞ <Nop>
nnoremap <silent> !Þ <Nop>
nnoremap <silent> ! <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})
xnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
xnoremap * y/\V"
nnoremap <silent> <iÞ <Nop>
nnoremap <silent> <aÞ <Nop>
nnoremap <silent> <Þ <Nop>
nnoremap <silent> < <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})
nnoremap <silent> >iÞ <Nop>
nnoremap <silent> >aÞ <Nop>
nnoremap <silent> >Þ <Nop>
nnoremap <silent> > <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})
nnoremap Y y$
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> ccÞ <Nop>
nnoremap <silent> ciÞ <Nop>
nnoremap <silent> caÞ <Nop>
nnoremap <silent> ctitlÞ <Nop>
nnoremap <silent> ctitÞ <Nop>
nnoremap <silent> ctiÞ <Nop>
nnoremap <silent> ctÞ <Nop>
nnoremap <silent> cbÞ <Nop>
nnoremap <silent> cÞ <Nop>
nnoremap <silent> c <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})
nnoremap <silent> diÞ <Nop>
nnoremap <silent> daÞ <Nop>
nnoremap <silent> dÞ <Nop>
nnoremap <silent> d <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
nnoremap <silent> gUiÞ <Nop>
nnoremap <silent> gUaÞ <Nop>
nnoremap <silent> gUÞ <Nop>
nnoremap <silent> g~iÞ <Nop>
nnoremap <silent> g~aÞ <Nop>
nnoremap <silent> g~Þ <Nop>
nnoremap <silent> guiÞ <Nop>
nnoremap <silent> guaÞ <Nop>
nnoremap <silent> guÞ <Nop>
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
nnoremap gc <Plug>(comment_toggle_linewise)
nnoremap <silent> <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <silent> <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <silent> viÞ <Nop>
nnoremap <silent> vaÞ <Nop>
nnoremap <silent> vÞ <Nop>
nnoremap <silent> v <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})
nnoremap <silent> yiÞ <Nop>
nnoremap <silent> yaÞ <Nop>
nnoremap <silent> yÞ <Nop>
nnoremap <silent> y <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})
nnoremap <silent> zfiÞ <Nop>
nnoremap <silent> zfaÞ <Nop>
nnoremap <silent> zfÞ <Nop>
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
nnoremap <silent> <C-B>mÞ <Nop>
nnoremap <silent> <C-B>qÞ <Nop>
nnoremap <silent> <C-B>cÞ <Nop>
nnoremap <silent> <C-B>Þ <Nop>
nnoremap <silent> <C-B> <Cmd>lua require("which-key").show("\2", {mode = "n", auto = true})
nnoremap <silent> <C-W>Þ <Nop>
nnoremap <silent> <C-W> <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent> <C-B>ql <Cmd>BufferLineCloseRight
nnoremap <silent> <C-B>qh <Cmd>BufferLineCloseLeft
nnoremap <silent> <C-B>qq <Cmd>BufferLineCloseOthers
nnoremap <silent> <C-B>mh <Cmd>BufferLineMovePrev
nnoremap <silent> <C-B>ml <Cmd>BufferLineMoveNext
nnoremap <silent> <C-B>ch <Cmd>BufferLineCyclePrev
nnoremap <silent> <C-B>cl <Cmd>BufferLineCycleNext
nnoremap <silent> <C-B>p <Cmd>BufferLineTogglePin
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <C-S-Space> <Cmd>Neotree toggle
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
nnoremap <silent> <C-S-C> <Cmd>execute v:count . "ToggleTerm"
nnoremap <silent> <C-S-C> <Cmd>execute v:count . "ToggleTerm"
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
inoremap <silent> mÞ <Nop>
inoremap <silent> qÞ <Nop>
inoremap <silent> cÞ <Nop>
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\2", {mode = "i", auto = true})
inoremap <silent> ql <Cmd>BufferLineCloseRight
inoremap <silent> qh <Cmd>BufferLineCloseLeft
inoremap <silent> qq <Cmd>BufferLineCloseOthers
inoremap <silent> mh <Cmd>BufferLineMovePrev
inoremap <silent> ml <Cmd>BufferLineMoveNext
inoremap <silent> ch <Cmd>BufferLineCyclePrev
inoremap <silent> cl <Cmd>BufferLineCycleNext
inoremap <silent> p <Cmd>BufferLineTogglePin
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set completeopt=menu,menuone,preview,noinsert
set helplang=en
set ignorecase
set noloadplugins
set mouse=a
set packpath=/opt/homebrew/Cellar/neovim/0.9.4/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/bufferline.nvim,~/.config/nvim/nvim-cfg-commit,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/nui.nvim,~/.local/share/nvim/lazy/neo-tree.nvim,~/.local/share/nvim/lazy/fwatch.nvim,~/.local/share/nvim/lazy/project.nvim,~/.local/share/nvim/lazy/nvim-autopairs,~/.local/share/nvim/lazy/heirline.nvim,~/.local/share/nvim/lazy/feline.nvim,~/.local/share/nvim/lazy/arshlib.nvim,~/.local/share/nvim/lazy/arshamiser.nvim,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/Comment.nvim,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/vim-sleuth,~/.local/share/nvim/lazy/nvim-notify,~/.local/share/nvim/lazy/neodev.nvim,~/.local/share/nvim/lazy/fidget.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/toggleterm.nvim,~/.local/share/nvim/lazy/vim-fugitive,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/friendly-snippets,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/cmp_luasnip,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/cmp-nvim-lsp-signature-help,~/.local/share/nvim/lazy/shade.nvim,~/.local/share/nvim/lazy/vim-rhubarb,~/.local/share/nvim/lazy/onedark.nvim,/opt/homebrew/Cellar/neovim/0.9.4/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.9.4/share/nvim/runtime/pack/dist/opt/matchit,/opt/homebrew/Cellar/neovim/0.9.4/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/cmp-nvim-lsp/after,~/.local/share/nvim/lazy/cmp_luasnip/after,~/.local/share/nvim/lazy/cmp-nvim-lsp-signature-help/after
set showtabline=0
set smartcase
set statusline=%{%v:lua.require'feline'.generate_statusline()%}
set tabline=%!v:lua.nvim_bufferline()
set termguicolors
set timeoutlen=300
set undofile
set updatetime=250
set window=51
" vim: set ft=vim :
