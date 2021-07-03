"+------------------+
"|   Plug Plugins   |
"+------------------+
call plug#begin('~/.vim/plugged')
"+---------+
"|  Theme  |
"+---------+
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
"+-------+
"|  Git  |
"+-------+
Plug 'tpope/vim-fugitive' " git blame or displaying a diff on 
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'itchyny/vim-gitbranch'
"+------------+
"|  Debuggin  |
"+------------+
"Plug 'pursmourning/vimspector'
"Plug 'vim-vdebug/vdebug'
"Plug 'eliba2/vim-node-inspect'
"+-------+
"|  IDE  |
"+-------+
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine' " Better visual guide
Plug 'nathanaelkane/vim-indent-guides' " Indentation guide
Plug 'machakann/vim-swap' " swap arguments in parenthesis
Plug 'ap/vim-css-color' " Display the hexadecimal colors
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim' " Search text  and $sudo apt-get install ack-grep
Plug 'mg979/vim-visual-multi', {'do': 'master'} " 
Plug 'storyn26383/vim-vue' " Syntax Vue
Plug 'turbio/bracey.vim', {'do':'npm install --prefix server'}
Plug 'elzr/vim-json' " Format at JSON
Plug 'jiangmiao/auto-pairs'
Plug 'chengzeyi/multiterm.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'jwalton512/vim-blade'
Plug 'heapslip/vimage.nvim'
Plug 'tpope/vim-surround' " 'text test' change to *text test*
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-bbye' " Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'shawncplus/phpcomplete.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-dadbod'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug '0x84/vim-coderunner' " run selected code (php, js, python, ...)

"+---------------------------+
"|  AutoCompletion with coc  |
"+---------------------------+
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'eclipse/eclipse.jdt.ls' " Dependency coc-java
"+----------------------------+
"|  AutoCompletion with ncm2  |
"+----------------------------+
" Plug 'ludovicchabant/vim-gutentags' " tags
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'} " php refactor
" phpactor require ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-html-subscope' " Subscope detection
Plug 'ncm2/ncm2-bufword' "Autocomplete text in current buffer
Plug 'ncm2/ncm2-jedi' "Autocomplete python
Plug 'ncm2/ncm2-ultisnips' "provides some useful tools when autocompleting (more on that later.
Plug 'SirVer/ultisnips' "dependency for ncm2-ultisnips.
Plug 'honza/vim-snippets', {'for': ['sh', 'python', 'markdown']}

"+------------------------------------------------+
"|  Lenguage Server Protocol complement for ncm2  |
"+------------------------------------------------+
Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh',
	\}

call plug#end()
