augroup filetype_csv
    autocmd!
    autocmd BufRead ,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END

" i3config
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
  au BufNewFile,BufRead $DOTFILES/i3/config set filetype=i3config
aug end

" flows azkaban 
aug flow_azkaban
  au!
  au BufNewFile,BufRead *.flow set filetype=yaml
aug end

