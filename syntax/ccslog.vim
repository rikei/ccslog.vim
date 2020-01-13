if exists("b:current_syntax")
    finish
endif

"时间戳
syn match ccslog_Timestamp '\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2}.\d\{3}'

"关键字
syn keyword ccslog_logLevelError ERROR
syn keyword ccslog_logLevelDebug DEBUG
syn keyword ccslog_logLevelInfo INFO
syn keyword ccslog_exception ZeusException Exception contained

"业务代码
syn match ccslog_bizcode_cps_batch ' com.fintechervision.ccs.cps.batch\S\+'
syn match ccslog_bizcode_cps_facility ' com.fintechervision.ccs.cps.facility\S\+'
syn match ccslog_bizcode_glp_batch ' com.fintechervision.ccs.glp.batch\S\+'
syn match ccslog_exception '^\(\(com\)\|\(org\)\|\(java\)\).*:\zs.*' contains=ccslog_exception


"语法高亮
"hi def link ccslog_logLevelError Error
"hi def link ccslog_logLevelDebug Debug
"hi def link ccslog_logLevelInfo Info

hi ccslog_exception cterm=bold,standout ctermfg=red
"hi ccslog_logLevelError cterm=bold ctermfg=darkred
hi hi_biz ctermbg=red
hi hi_facility ctermbg=lightblue
hi hi_timestamp ctermfg=DarkMagenta

"hi ccslog_logLevelInfo ctermfg=green

hi def link ccslog_bizcode_cps_batch hi_biz
hi def link ccslog_bizcode_glp_batch hi_biz
hi def link ccslog_bizcode_cps_facility hi_facility
hi def link ccslog_Timestamp hi_timestamp
