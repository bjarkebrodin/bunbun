" load defaults
  source $VIMRUNTIME/defaults.vim
  source ~/.vim/tabcompletion.vim
  source ~/.vim/autocomment.vim


  filetype plugin indent on

" shared clipboard
  set clipboard=unnamed

" no backups necessarry
  set nobackup
  set nowb
  set noswapfile

" read when changed outside
  set autoread

" miscellaneous
	set shortmess+=I		" no startup msg
	set nocompatible 		" -vi compatibility

" style
	syntax on						" syntax highlighting
" set termguicolors
	set number 					" line numbers
	set relativenumber	" relative line numbers
  set background=dark

  colorscheme gruvbox
  hi! Normal ctermbg=NONE guibg=NONE

  " highlight Normal ctermbg=none guibg=none
  " highlight SignColumn ctermbg=none guibg=none
  " highlight LineNr ctermbg=none guibg=none


" indent
  set expandtab
  set smarttab
  set shiftwidth=2
  set tabstop=2

" controls
	set autoindent
  set smartindent
  set wrap
	
" better backspace 
	set backspace=indent,eol,start

" case-insensitive until case search string is case-mixed
	set ignorecase
	set smartcase

" search-as-you-type behaviour
	set incsearch
  set showmatch

" 'Q' in normal mode enters Ex mode. You almost never want this.
	nmap Q <Nop>

" disable audible bell because it's annoying.
	set noerrorbells 
  set novisualbell 
  set t_vb=
  set tm=500

" file completion
  set wildmode=longest,full
"   set wildmenu " visible wildmenu

" autocompletion voodoo, need tabcompletion.vim
  inoremap <tab> <c-r>=AdaptiveTabComplete()<CR>
 
" shortcuts
  nnoremap <Space> :w<CR>
  nnoremap K :tabnext<CR>
  nnoremap J :tabprev<CR>


