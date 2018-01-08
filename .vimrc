
" =============================================================================
"                               General settings
" =============================================================================

set title
set wildmode=longest,list,full
set wildmenu
syntax on
set laststatus=2
set number              " Show line numbers
set nocompatible        " iMproved.
set hidden              " Allow for putting dirty buffers in background.
set ignorecase          " Case-insensitive search
set smartcase           " Override ignorecase when searching uppercase.

" =============================================================================
"                                   Styling
" =============================================================================

set hlsearch            " Highlight search results.
set showbreak=…         " Highlight non-wrapped lines.
set showcmd             " Display incomplete command in bottom right corner.

" Choose background based on terminal emulator color scheme.
if $ITERM_PROFILE =~# "light"
  set background=light
else
  set background=dark
endif

" =============================================================================
"                                  Formatting
" =============================================================================

" set formatoptions=tcrqn " See :h 'fo-table for a detailed explanation.
set nojoinspaces        " Don't insert two spaces when joining after [.?!].
set copyindent          " Copy the structure of existing indentation
set expandtab           " Expand tabs to spaces.
set tabstop=4           " number of spaces for a <Tab>.
set shiftwidth=4        " Tab indention

" =============================================================================
"                                    Plugins
" =============================================================================

" Install Plug if not present.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload
  silent !curl -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'rstacruz/sparkup'
Plug 'junegunn/fzf'
Plug 'edkolev/tmuxline.vim'
call plug#end()

" -- Lightline ---------------------------------------------------------------

" Check :h lightline-problem-9 for font issues.
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \ },
\ }

" -- Solarized colors --------------------------------------------------------

let g:solarized_menu = 0
let g:solarized_termtrans = 1
let g:solarized_contrast = 'high'
let g:solarized_hitrail = 1

if !has('gui_running')
  let g:solarized_termcolors = 256
end

colorscheme solarized
