call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'elmcast/elm-vim'
Plug 'plasticboy/vim-markdown'
Plug 'itchyny/lightline.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'fatih/vim-go'

"   Git wrapper   "
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-jsx 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:jsx_ext_required = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto-save 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable on startup
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }


if !has('gui_running')
  set t_Co=256
endif

