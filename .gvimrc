set background=light                             " 'dark' or 'light', used for highlight colors

set grepprg=ack                                 " if we're running in a GUI assume that ack is installed
set grepformat=%f:%l:%m                         " ack-friendly options for :grep
set guioptions-=r guioptions-=L                 " disable the default scrollbars
set guioptions-=T                               " hide the toolbar

set guiheadroom=0
set guifont=Inconsolata:h14,Menlo:h12,DejaVu\ Sans\ Mono:h12    " try first Menlo 12pt, then DejaVu Sans Mono 12pt
"set guifont=Source\ Code\ Pro:h12,Inconsolata:h14,Menlo:h12,DejaVu\ Sans\ Mono:h12    " try first Menlo 12pt, then DejaVu Sans Mono 12pt
set guitablabel=%t
set guitabtooltip=%F
set columns=80    "180
set lines=62      "999

"macm Window.Select\ Next\ Tab       key=<D-S-Right>
"macm Window.Select\ Previous\ Tab   key=<D-S-Left>

" Map the tabs to Cmd-1..Cmd-9, web browser style
for i in range(1, 8)
  execute 'nnoremap <silent> <D-'. i . '> :tabnext ' . i . '<CR>'
endfor
nnoremap <silent> <D-9> :tablast<CR>

" Highlight meta and special keys listed with :map, also for text used to show unprintable characters in the text, 'listchars'.
" Generally text that is displayed differently from what it really is.
highlight SpecialKey ctermfg=red guifg=red

"set transparency=10

highlight Normal guibg=grey90
highlight Cursor guibg=Green guifg=NONE
highlight NonText guibg=grey80
highlight Constant gui=NONE guibg=grey95
highlight Special gui=NONE guibg=grey95

hi StatusLineNC guifg=LightCyan guibg=lightblue

" autocmd
if has("autocmd") 
  "autocmd!

  " automatically reload .vimrc after saving .vimrc
  au BufWritePost .gvimrc source $MYVIMRC
endif

