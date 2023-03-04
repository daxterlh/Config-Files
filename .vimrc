"####################################"
"#				                        #"
"#       Arquivo de conf. VIM       #"
"#                                  #"
"####################################"


" Visual config
" Configuração que afeta o VIM visualmente

 " mostrar numeros 
	set nu!
 " modo colorido
   syntax on
 " pesquisa colorida
   set hlsearch
 " quebra de linha
   set wrap 
 " conclusão da linha de comando 
   set wildmenu
 " barra de status
   set laststatus=2

" "Backend" config
" Configuração que afeta internamente o VIM

 " ajuda a forçar os plugins rodarem corretamente
   filetype off
 " para os plugins abrirem corretamente 
   filetype plugin indent on 
 " quantos espaços o TAB irá pular
   set expandtab
   set tabstop=3
   set softtabstop=3
   set shiftwidth=3
 " Indetação inteligente e automatica
   set autoindent
   set smartindent
   set encoding=UTF-8

" Teclas de atalho

 " quit! = q, sair sem salvar
   map q :q!<CR>
 " ctrl+w = :wq, sair e salvar
   map <C-w> :wq<CR>
 " ctrl+s = :w, salvar
   map <C-s> :w<CR> 

"###################################"
"#                                 #"
"#             PLUGINS             #"
"#                                 #"                                
"###################################"

if filereadable(expand("~/.vimrc.plug"))
       source ~/.vimrc.plug
endif


   " Vim-Airline
   " Estilizador da barra de status do vim

    let g:airline_theme='fruit_punch'
    let g:airline_powerline_fonts = 1

   " NerdTREE
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>
   
   
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

   " Vim-DevIcons
    let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    let g:DevIconsEnableFoldersOpenClose = 1
    if exists("g:loaded_webdevicons")
        call webdevicons#refresh()
    endif

    set t_RV=
