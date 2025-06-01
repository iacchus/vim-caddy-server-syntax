" Language:			Caddyfile
" Maintainer:		0az <0az@afzhou.com>
" Original Author:	Josh Glendenning <josh@isobit.io>

if exists('b:did_ftplugin')
	finish
endif
let b:did_ftplugin = 1

setlocal commentstring=#\ %s

" Add NERDCommenter delimiters
let s:delimiters = {'left': '#'}
if exists('g:NERDDelimiterMap')
	if !has_key(g:NERDDelimiterMap, 'caddy')
		let g:NERDDelimiterMap.caddy = s:delimiters
	endif
elseif exists('g:NERDCustomDelimiters')
	if !has_key(g:NERDCustomDelimiters, 'caddy')
		let g:NERDCustomDelimiters.caddy = s:delimiters
	endif
else
	let g:NERDCustomDelimiters = {'caddy': s:delimiters}
endif
unlet s:delimiters
