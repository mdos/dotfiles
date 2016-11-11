" https://www.youtube.com/watch?v=YhqsjUUHj6g
"

" Source the file (enable syntax hilight, etc.) as soon as file is saved
autocmd! bufwritepost .vimrc source %

" Better copy and paste
" Press F2 before pasting large blocks
set pastetoggle=<F2>
set clipboard=unnamed

" rebind leader key
let mapleader = ","

" Remove highlight of last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quick save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit

" Pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
execute pathogen#infect()
filetype off
filetype plugin indent on
syntax on

" show line numbers and length
set number
set tabstop=4       " show existing tab with 4 spaces
set softtabstop=4   " 
set shiftwidth=4    " when indenting, use 4 spaces
set shiftround      " ??
set expandtab       " tab = 4 spaces
set tw=79           " width of doc
set nowrap          " don't auto wrap on load
set fo-=t           " don't auto warp while typing
set colorcolumn=90  " visual queue for max len
highlight ColorColumn ctermbg=Grey

" Make search case insensitive
set nohlsearch
set incsearch
set ignorecase
set smartcase

" swapfiles should be under $HOME (not in eg. dropbox)
set nobackup            " get rid of stupid backup files
set nowritebackup
set noswapfile
set directory=$HOME/.vim/swapfiles//

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wimbat256mod.vim http://www.vim.org/scripts/download_script.php?src=13400
" git clone git://github.com/altercation/vim-colors-solarized.git
set t_Co=256
" colorscheme wombat256mod
let g:solarized_termcolors=256      " Without this, 256 screen term does no work
set background=dark
colorscheme solarized

" Useful settings
set history=700
set undolevels=700

" ============================================================================
" PYTHON IDE
" ============================================================================
" vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
" vim-airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
set laststatus=2

" ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc

" jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" " See
" http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

"
" " Python folding
" " mkdir -p ~/.vim/ftplugin
" " wget -O ~/.vim/ftplugin/python_editing.vim
" http://www.vim.org/scripts/download_script.php?src_id=5492
" "" set nofoldenable
