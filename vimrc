" make Vim behave in a more useful way
set nocompatible

" define number of colors
set t_Co=256

" define initial background (light/dark)
set background=dark

" define color scheme
colorscheme solarized

" always display status line
set laststatus=2

" do not show mode
set noshowmode

" define lightline configuration
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" define function to toggle solarized theme 
" change background and update lightline color scheme
function! ToggleSolarizedTheme()
  let &background = ( &background == "dark"? "light" : "dark" )
  if exists("g:lightline")
    runtime autoload/lightline/colorscheme/solarized.vim
    call lightline#colorscheme()
  endif
endfunction

" map F12 to ToggleSolarizedTheme() function
map <F12> :call ToggleSolarizedTheme()<CR>

