" See the article http://dmitryfrank.com/articles/vim_project_code_navigation

" Get path to ".vimprj" folder
let s:sPath = expand('<sfile>:p:h')

let g:indexer_ctagsCommandLineOptions="--fields=+iaSl --extras=+q --languages=C"

" Specify the project's 'indexer_files'"
let g:indexer_indexerListFilename = s:sPath.'/indexer_files'
let g:easytags_file=s:sPath.'/indexer_files_tags/tags'

set errorformat=
set errorformat+=%E%f:%l:%c:\ %t\rror:\ %m,%-C,%-Z%p^
set errorformat+=%f:%l:%c:\ %t\arning:\ %m,%-C,%-Z%p^
set errorformat+=%D%*\\a:\ Entering\ directory\ [`']%f'
set errorformat+=%X%*\\a:\ Leaving\ directory\ [`']%f'

set shiftwidth=2 " indendation level
set tabstop=2
set cindent