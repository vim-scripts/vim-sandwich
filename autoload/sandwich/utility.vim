function! sandwich#utility#map_surround_vim_style() abort
  let g:sandwich_no_default_key_mappings = 1
  let g:operator_sandwich_no_default_key_mappings = 1

  " add
  nmap <unique> ys <Plug>(operator-sandwich-add)
  xmap <unique> S <Plug>(operator-sandwich-add)

  " delete
  nmap <silent> ds  <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
  nmap <silent> dsb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

  " replace
  nmap <silent> cs  <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
  nmap <silent> csb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
endfunction

" vim:set foldmethod=marker:
" vim:set commentstring="%s:
" vim:set ts=2 sts=2 sw=2:
