syntax on
set scrolloff=10

set background=dark
set number
set t_ut=

set autoread
set cursorline
set mouse=

set wildmenu
set updatetime=100

set relativenumber
set tabstop=2
set shiftwidth=2
set softtabstop=2
set spelllang=en_us,pt_br
set expandtab
set ai "Auto indent
set si
set hidden
set updatetime=300
set signcolumn=yes
set re=0
set nohlsearch
set incsearch
set t_Co=256
set encoding=UTF-8
set completefunc=emoji#complete

call plug#begin('~/.vim/plugged')
Plug 'kristijanhusak/defx-git'
Plug 'nanotech/jellybeans.vim'
Plug 'getomni/neovim'
Plug 'catppuccin/nvim'
Plug 'Kachyz/vim-gitmoji'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'sainnhe/everforest'
Plug 'nvim-lua/popup.nvim'
Plug 'neovimhaskell/haskell-vim'
Plug 'mhinz/vim-startify'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'xiyaowong/nvim-transparent'
Plug 'cohama/lexima.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mpickering/hlint-refactor-vim'
Plug 'dmerejkowsky/vim-ale'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mcchrish/zenbones.nvim'
if has("nvim")
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'cocopon/iceberg.vim'
  Plug 'Drogglbecher/vim-moonscape'
  Plug 'glepnir/spaceline.vim'
  Plug 'dylanaraps/wal.vim'
  Plug 'gruvbox-community/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'ray-x/material_plus.nvim'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'yunlingz/ci_dark'
  Plug 'dracula/vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'embark-theme/vim', { 'as': 'embark' }
  Plug 'Th3Whit3Wolf/one-nvim'
  Plug 'Th3Whit3Wolf/onebuddy'
  Plug 'neovim/nvim-lspconfig'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'hoob3rt/lualine.nvim'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'tjdevries/colorbuddy.nvim'
  Plug 'marko-cerovac/material.nvim', { 'branch': 'colorbuddy' }
  Plug 'glepnir/zephyr-nvim'
  Plug 'mangeshrex/uwu.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'hrsh7th/nvim-compe'
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'folke/tokyonight.nvim'
  Plug 'tjdevries/gruvbuddy.nvim'
  Plug 'Yagua/nebulous.nvim'
  Plug 'mhinz/vim-signify'
  Plug 'folke/lsp-colors.nvim'
  Plug 'rktjmp/lush.nvim'
endif
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
call plug#end()

luafile ~/.config/nvim/compe-config.lua
luafile ~/.config/nvim/javascript-lsp.lua
"luafile ~/.config/nvim/evil_lualine.lua
luafile ~/.config/nvim/nvimtree.lua

let g:spaceline_seperate_style = 'arrow-fade'

set termguicolors

let g:ci_dark_enable_bold = 1
let ayucolor="dark"
let g:material_style = 'deep ocean'

lua << EOF
local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup(
    {
		transparent_background = true,
		term_colors = true,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				},
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = false,
			indent_blankline = {
				enabled = false,
				colored_indent_levels = false,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
			lightspeed = false,
			ts_rainbow = true,
			hop = false,
		},
	}
)
EOF

let g:tokyonight_style = "night"

"colorscheme onehalflight
"colorscheme catppuccin 
"colorscheme embark
"colorscheme gruvbox
"colorscheme jellybeans
colorscheme everforest

let g:everforest_background = 'dark'

let mapleader = " "

nnoremap <leader> :so ~/.config/nvim/init.vim<CR>

nnoremap <C-p> <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
noremap <C-c> "+y

let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'haskell': ['hfmt'],
\ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" Lspsaga
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

"-- or use command
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>


lua << EOF
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  exclude = {}, -- table: groups you don't want to clear
})
EOF

nmap <leader>w :w!<cr>
:command! W w
nmap <silent><leader>q :wq<cr>
"lua require'colorizer'.setup()

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "" }
  },
}
EOF


"Haskell
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1
let g:haskell_backpack = 1

