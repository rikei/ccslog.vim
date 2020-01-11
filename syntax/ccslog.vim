if exists("b:current_syntax")
    finish
endif

"时间戳
"syn match ccslog_Timestamp ''

"文件路径
"syn match ccslog_filepath ''

"日志级别
syn keyword ccslog_logLevelError ERROR
syn keyword ccslog_logLevelDebug DEBUG
syn keyword ccslog_logLevelInfo INFO

"语法高亮
hi def link ccslog_logLevelError Error
hi def link ccslog_logLevelDebug Debug
hi def link ccslog_logLevelInfo Info
