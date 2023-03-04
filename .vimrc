" Vim Configuração"

" Visual.configs
" Configurações que afetam o vim visualmente, causando uma mudança de estilo

set nu!
syntax on
filetype on
set hlsearch
set laststatus=2
set wrap
set incsearch
set wildmenu


" No Visual.configs
" Configurações que não afetam visualmente o vim

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set confirm
set encoding=utf-8
set cursorline
set mouse=a


" Teclas

map q :q!<CR>
map = :wq<CR>
map <C-s> :w<CR> 


" Themes

source /home/lhordin/.vim/themes/terroo-colors.vim


" [[Plugins]]
" Chamar o arquivo .vimrc.plug

if filereadable(expand("~/.vimrc.plug"))
   source ~/.vimrc.plug
endif


" Vim-Airline
" Estilizador da barra de status do vim

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1



" YOUCOMPLETEME

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_clangd_args=['--header-insertion=never']
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

" UtilsSnips

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" NerdTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Vim-DevIcons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
