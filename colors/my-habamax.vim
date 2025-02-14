source $VIMRUNTIME/colors/habamax.vim

let g:colors_name = 'my-habamax'

hi! link @lsp.type.constParameter Constant
hi! link @function.builtin Special
hi! @operator guifg=#d7875f guibg=NONE gui=NONE cterm=NONE
hi! @keyword.type guifg=#365b80 guibg=NONE gui=NONE cterm=NONE
hi! @lsp.type.namespace guifg=#a162a1 guibg=NONE gui=NONE cterm=NONE

hi Identifier guifg=#87afaf guibg=NONE gui=NONE cterm=NONE

hi TodoBgNOTE guifg=#0e0e0e guibg=#60cb60 gui=bold cterm=bold
hi TodoFgNOTE guifg=#70db70 guibg=NONE gui=NONE cterm=NONE
hi TodoBgFIX guifg=#0e0e0e guibg=#ff0000 gui=bold cterm=bold
hi TodoBgWARN guifg=#0e0e0e guibg=#ffa500 gui=bold cterm=bold
hi TodoBgTODO guifg=#0e0e0e guibg=#a9d4d1 gui=bold cterm=bold

" Transparent background
"hi Normal guibg=NONE ctermbg=NONE
"hi NormalNC guibg=NONE ctermbg=NONE

" NOTE: hello
" WARN: hello
" FIX: hello
" TODO: hello

"comment
