if has("gui_macvim")

  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

  set antialias            " Smooth fonts
  set colorcolumn=81       " Colourcolumn (the scary margin)
  set guifont=Monaco:h12   " Font family:size
  set guioptions-=T        " Start without the toolbar
  set guioptions=aAce      " Don't show scrollbars
  set lines=50 columns=100 " Default window dimensions
  set transparency=5       " MacVim transparency

  color vwilight           " Default color scheme

endif

