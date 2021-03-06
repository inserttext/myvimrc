" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <C-n> pumvisible() ? "\<C-n>" : coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)

" Fix autofix problem of current line
nmap <leader>qf <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Highlight groups
hi! CocUnderline cterm=underline gui=underline
hi! default clear None
hi! default link CocCodeLens GruvBoxGrey
hi! default link CocErrorSign GruvBoxRedSign
hi! default link CocWarningSign GruvBoxYellowSign
hi! default link CocInfoSign GruvBoxGreenSign
hi! default link CocHintSign GruvBoxBlueSign
hi! default link CocErrorVirtualText GruvBoxRed
hi! default link CocWarningVirtualText GruvBoxYellow
hi! default link CocInfoVirtualText GruvBoxGreen
hi! default link CocHintVirtualText GruvBoxBlue
hi! default link CocErrorHighlight CocUnderline
hi! default link CocWarningHighlight CocUnderline
hi! default link CocInfoHighlight CocUnderline
hi! default link CocHintHighlight CocUnderline
hi! default link CocHighlightText CursorColumn
hi! default link CocHighlightRead CocHighlightText
hi! default link CocHighlightWrite CocHighlightText
hi! default link CocErrorFloat CocErrorSign
hi! default link CocWarningFloat CocWarningSign
hi! default link CocInfoFloat CocInfoSign
hi! default link CocHintFloat CocHintSign
hi! default link CocCursorRange Search
hi! default link CocHoverRange Search
