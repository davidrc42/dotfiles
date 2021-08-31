colorscheme nord
 hi Visual term=reverse cterm=reverse guibg=Black


packloadall

hi Normal guibg=NONE ctermbg=NONE

"gitsigns

let g:javascript_plugin_jsdoc = 1


"CTRLP
let g:ctrlp_show_hidden = 1

"BAR
let g:lightline = {
     \ 'colorscheme': 'wombat',
     \ }

"commenter

"PRETTIER
"let g:prettier#autoformat = 1
"autocmd BufWritePost *.js,*.json execute ':silent Prettier'
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
"let g:prettier#autoformat_require_pragma = 0

"nerdtree syntax
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"black
autocmd BufWritePost *.py execute ':silent Black'
autocmd BufWritePost *.c execute ':silent ClangFormat'

"goto


"python jedi




"CLOSE TAG
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*js,*.tsx,*.jsx,*.xml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.html,*.xhtml,*.phtml,*js,*.tsx,*.jsx,*.xml'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,tsx,jsx,xml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'html,xhtml,phtml,js,tsx,jsx,xml'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }


