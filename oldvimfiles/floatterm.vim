let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F3>'
let g:floaterm_keymap_prev   = '<F2>'
let g:floaterm_keymap_new    = '<F4>'

let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.9
let g:floaterm_height=0.2
let g:floaterm_autoclose=1
let g:floaterm_wintype='float'
let g:floaterm_position='bottom'
let g:floaterm_title='Terminal ($1|$2)'

augroup FloatermCustomisations 
	autocmd!
	autocmd ColorScheme * highlight FloatermBorder guibg=none
augroup END
