let g:lightline = {
			\ 'colorscheme': g:colors_name,
			\ 'tabline': {
			\ 	'left': [ [ 'tabs' ] ],
			\		'right': []
			\ },
			\	'active': {
			\		'left': [ ['mode'] ],
			\		'right': [ [ 'lineinfo' ],
			\							 [ 'percent' ],
			\							 [ 'fileformat','fileencoding','filetype' ] ]
			\ },
			\	'separator': { 'left': '', 'right': '' },
			\	'subseparator': { 'left': '|', 'right': '|' }
			\ }
