
if exists("b:current_syntax")
  finish
endif

"syn keyword duoKeyword match comatch prd cns cmd def with Done Print forall data codata rec mu
syn keyword duoKeyword case cocase def of forall data codata rec mu import module return set Top Bot CBV CBN refinement constructor destructor type operator at leftassoc rightassoc cmd prd cns class instance
syn match duoKeyword '#[A-Z][a-zA-Z0-9]*'

"syn match duoSymbs ':=\|=>\|>>\|\\/\|/\\\|<:\|<<:\|:>>'
syn match duoSymbs ':=\|=>\|>>\|\\/\|/\\\|<:'
syn match duoLit '\v<[0-9]+>'
syn match duoLit '\v<[0-9][0-9.]*#[a-zA-Z0-9]+>'
syn match duoLit "\v'.'"
syn match duoLit '\v"[^"]*"'
"syn match duoComment '#.*$'
syn match duoComment '--.*$'

let b:current_syntax = "duo"

hi def link duoKeyword Keyword
hi def link duoLit Number
hi def link duoSymbs Macro
"hi def link duoSymbs Operator
hi def link duoComment Comment
