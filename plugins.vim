"+---------------------+
"|   Shorcut Generic   |
"+---------------------+
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
map <Leader>; :Files<CR>
map <Leader>: :Lines<CR>
map <Leader>+ :5winc +<CR>
map <Leader>< :20winc <<CR>
map <Leader>> :20winc ><CR>
map <Leader>- :5winc -<CR>
map <Leader>w :w!<CR>
map <Leader>q :q<CR>
map <Leader>lo :lopen<CR>
map <Leader>lc :lclose<CR>
nnoremap <CR> o<ESC>

" vim-vue / fix syntax highlighting
autocmd FileType vue syntax sync fromstart
" let g:vue_pre_processors = []

" let g:python3_host_prog = 'user/bin/python3'
"+-----------------+
"|   Theme gruvbox |
"+-----------------+
" colorscheme gruvbox
"+---------------+
"|   Theme Ayu   |
"+---------------+
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
"+-------------------------------------+
"|   Config Lenguage Protocol Server   |
"+-------------------------------------+
if &filetype == "phython"
	inoremap <C-space> <C-x><C-u>
else
	inoremap <silent><expr> <C-space> coc#refresh()
endif

nmap <leader> gd <Plug>(coc-definition)
nmap <leader> gy <Plug>(coc-type-definition)
nmap <leader> gi <Plug>(coc-implementation)
nmap <leader> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
noremap <leader> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '|'.&keywordprg." ".expand('<cword>')
	endif
endfunction

augroup PhpactorMappings
    au!
    au FileType php nmap <buffer> <leader>u :PhpactorImportClass<CR>
    au FileType php nmap <buffer> <leader>e :PhpactorClassExpand<CR>
    au FileType php nmap <buffer> <leader>ua :PhpactorImportMissingClasses<CR>
    au FileType php nmap <buffer> <leader>mm :PhpactorContextMenu<CR>
    au FileType php nmap <buffer> <leader>nn :PhpactorNavigate<CR>
    au FileType php,cucumber nmap <buffer> <leader>gd
        \ :PhpactorGotoDefinition<CR>
    au FileType php nmap <buffer> <leader>K :PhpactorHover<CR>
    au FileType php nmap <buffer> <leader>tt :PhpactorTransform<CR>
    au FileType php nmap <buffer> <leader>cc :PhpactorClassNew<CR>
    au FileType php nmap <buffer> <leader>ci :PhpactorClassInflect<CR>
    au FileType php nmap <buffer> <leader>fr :PhpactorFindReferences<CR>
    au FileType php nmap <buffer> <leader>mf :PhpactorMoveFile<CR>
    au FileType php nmap <buffer> <leader>cf :PhpactorCopyFile<CR>
    au FileType php nmap <buffer> <leader>ee
        \ :PhpactorExtractExpression<CR>
    au FileType php vmap <buffer> <leader>ee
        \ :<C-u>PhpactorExtractExpression<CR>
    au FileType php vmap <buffer> <leader>em
        \ :<C-u>PhpactorExtractMethod<CR>
  augroup END

" note that if you are using Plug mapping you should not use 'noremap' mapping
" autocmd FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
" autocmd FileType php nmap <buffer> <Leader>K :PhpactorHover<CR>
" autocmd FileType php nmap <silent>M :call phpactor#ContextMenu()<CR>
" autocmd FileType php nmap <silent>gd :PhpactorGotoDefinition<CR>
" " autocmd FileType php nmap <silent>gd :PhpactorGotoDefinitionHsplit<CR>
" " autocmd FileType php nmap <silent>gd ::hpactorGotoDefinitionVsplit<CR>
" autocmd FileType php nmap <silent>fr :call phpactor#FindReferences()<CR>
autocmd FileType python nmap <silent>M <Plug>(lcn-menu)
autocmd FileType python nmap <silent>K <Plug>(lcn-hover)
autocmd FileType python nmap <silent>gd <Plug>(lcn-definition)
autocmd FileType python nmap <silent>gr <Plug>(lcn-references)
autocmd FileType python nmap <silent><F2> <Plug>(lcn-rename)
"+----------------------------------+
"|   Config Autocomplete with coc   |
"+----------------------------------+
autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType php let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@
augroup mygroup
	" setup formatexpr especified filetype(s)
	autocmd FileType typescript.json setl formatexpr=CocAction('formatSelected')
	" Update signature help on Jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
"+---------------------------------------+
"|   Config Autocomplete with ncm2 PHP   |
"+---------------------------------------+
" Enable ncm2 for all buffers
autocmd BufEnter = call ncm2#enable_for_buffer()
autocmd FileType javascript call ncm2#disable_for_buffer()
set shortmess+=c
"+------------------------------------------------+
"|   Universal Ctags 															|
"|   link: https://thevaluable.dev/vim-php-ide/   |
"+------------------------------------------------+
au BufWritePost *.php silent! !eval '[ -f ".git/hooks/ctags" ] && .git/hooks/ctags' &
"+------------------------------------------------+
"|   Config lengauge Client Complement for ncm2   |
"+------------------------------------------------+
"Required for operations modifying multiple buffers like rename
set hidden
let g:LanguageClient_signColumnAlwaysOn = 1
let g:LanguageClient_serverCommands = {
	\ 'python': [$HOME.'/.local/bin/pyls'],
	\}
"+-----------------------+
"|   Config Indentline   |
"+-----------------------+
"Indent guides color and character
" let g:indentLine_char_list = ['|', '||', '|||']
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#FFSF0'
let g:indentLine_color_faster = 0
let g:indentLine_color_char = 'c'
"+---------------------+
"|   Config SuperTab   |
"+---------------------+
let g:SuperTabDefaultCompletionType = "<c-n>"
"+---------------------+
"|   Config Lightline   |
"+---------------------+
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],[],['relativepath','modified']],
      \   'rigth': [[],['filetype', 'percent','lineinfo'],['gitbranch']],
      \ },
      \ 'inactive': {
      \   'left': [['inactive'],['relativepath']],
      \   'rigth': [['bufnum']],
      \ },
      \ 'component': {
      \   'bufnum': 'fugitive#head',
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'gitbranch': 'gitbranch#name',
      \ },
  \ }
"+------------------+
"|   Config Emmet   |
"+------------------+

"+---------------------+
"|   Config NerdTree   |
"+---------------------+
let NERDTreeQuitOnOpen=1
" let NERDTreeIgnore = ['^node_modules$']
let NERDTreeIgnore = ['tags']
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
"+----------------+
"|   Config Ale   |
"+----------------+
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'H'
" I have some custom icons for errors and warnings 
let g:ale_sing_error = '❌'
let g:ale_sing_warning = '⚠️'
let g:ale_open_list = 0
let g:ale_fix_on_save = 1
let g:ale_loclist = 0
let g:ale_linters = {
	\ 'cs': ['syntax', 'semantic', 'issues'],
	\ 'python': ['pylint'],
	\ 'java': ['javac'],
	\ 'javascript': ['eslint'],
	\ 'vue': ['eslint'],
	\ 'html': ['prettier'],
	\}
"+----------------+
"|   Config Vdebug   |
"+----------------+

"+-------------------------+
"|   Config NERDTree Git   |
"+-------------------------+

""+----------------------+
"|   Config GitGutter   |
"+----------------------+
let g:gitgutter_sign_modified_removed = '+'
nnoremap <leader>gh :GitGutterLineHighlightsToggle<cr>
nmap ]g <Plug>(GitGutterNextHunk)
nmap [g <Plug>(GitGutterPrevHunk)
autocmd BufWritePost * GitGutter
let g:gitgutter_terminal_reports_focus=0
"+----------------------+
"|   Config MultiTerm   |
"+----------------------+
nmap t <Plug>(Multiterm)
tmap <f2> <Plug>(Multiterm)
" Default options, do not put this in your configuration file
let g:multiterm_opts = {
            \ 'height': 'float2nr(&lines * 0.8)',
            \ 'width': 'float2nr(&columns * 0.8)',
            \ 'row': '(&lines - height) / 2',
            \ 'col': '(&columns - width) / 2',
            \ 'border_hl': 'Comment',
            \ 'border_chars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
            \ 'show_term_tag': 1,
            \ 'term_hl': 'Normal'
            \ }
" Your configuration should start here
if !exists('g:multiterm_opts')
    let g:multiterm_opts = {}
endif
" This option has a string value instead of number because it is uesd for eval()
let g:multiterm_opts.height = '30'
"+----------------------+
"|   Config webdebicons   |
"+----------------------+
let g:airline_powerline_fonts=1
set guifont=Droid\ Sans\ Mono\ for\ Poweline\ Plus\ Nerd\ File\ \Types\ 12
"+----------------------+
"|   Config Emmet   |
"+----------------------+
let g:user_emmet_install_global = 0
autocmd FileType html,css,blade.php,vue EmmetInstall

" let g:user_emmet_leader_key=',' " <C-y>
let g:user_emmet_leader_key='<C-Z>'
"+-------------------------------+
"|   Config Vim js file import   |
"+-------------------------------+
nnoremap <Leader>if <Plug>(JsFileImport)
nnoremap <Leader>iF <Plug>(JsFileImportList)
nnoremap <Leader>ip <Plug>(PromptJsFileImport)
nnoremap <Leader>ic <Plug>(JsFixImport)
"+-------------------------------+
"|   nvim-telescope   |
"+-------------------------------+
nnoremap <Leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

" https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

"+------------------+
"|   vim-snippets   |
"+------------------+
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-t>"

"+-------------+
"|   lazygit   |
"+-------------+
" setup mapping to call :LazyGit
nnoremap <silent> <leader>lg :LazyGit<CR>
