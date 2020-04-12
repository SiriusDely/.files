func! sirius#before() abort
	let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
endf

func! sirius#after() abort
  :set ignorecase
  :set smartcase
  let g:indentLine_setConceal = 0
endf
