" ==================================================================
" COLORS
" ==================================================================

" NORMAL
let s:nova_normal_black = "#445660"
let s:nova_normal_red = "#DF8C8C"
let s:nova_normal_green = "#A8CE93"
let s:nova_normal_yellow = "#DADA93"
let s:nova_normal_blue = "#83AFE5"
let s:nova_normal_magenta = "#9A93E1"
let s:nova_normal_cyan = "#7FC1CA"
let s:nova_normal_white = "#C5D4DD"

" BRIGHT
let s:nova_bright_black = "#899BA6"
let s:nova_bright_red = "#F2C38F"
let s:nova_bright_magenta = "#D18EC2"
let s:nova_bright_white = "#E6EEF3"

" DECORATION
let s:nova_decoration_dark = "#1E272C"
let s:nova_decoration_medium = "#556873"
let s:nova_decoration_light = "#6A7D89"


" ==================================================================
" HIGHLIGHT HELPER
" ==================================================================

function! s:highlight_helper(syntax_group, foreground_color, background_color)
  if a:background_color != ""
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=" . a:background_color . " gui=NONE cterm=NONE term=NONE"
  else
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=" . s:nova_normal_black . " gui=NONE cterm=NONE term=NONE"
  endif
endfunction


" ==================================================================
" RESET
" ==================================================================

set background=dark
highlight clear
set termguicolors
set fillchars=""
syntax on
syntax reset
let g:colors_name = 'nova'
call s:highlight_helper("Normal", s:nova_normal_white, "")


" ==================================================================
" HIGHLIGHT GROUPS BY PURPOSE
" ==================================================================

" DECORATION
call s:highlight_helper("SignColumn", "NONE", "")
call s:highlight_helper("LineNr", s:nova_decoration_light, "")
call s:highlight_helper("CursorLine", "NONE", s:nova_decoration_medium)
call s:highlight_helper("CursorColumn", s:nova_decoration_medium, "")
call s:highlight_helper("EndOfBuffer", s:nova_decoration_medium, "")
call s:highlight_helper("VertSplit", s:nova_decoration_medium, s:nova_decoration_medium)
call s:highlight_helper("StatusLineNC", s:nova_normal_black, s:nova_decoration_medium)
call s:highlight_helper("Pmenu", s:nova_normal_white, s:nova_decoration_medium)
call s:highlight_helper("PmenuSbar", s:nova_bright_black, s:nova_bright_black)
call s:highlight_helper("DiffText", s:nova_decoration_dark, "")
call s:highlight_helper("ColorColumn", s:nova_decoration_medium, "")
call s:highlight_helper("Folded", s:nova_normal_black, s:nova_decoration_medium)
call s:highlight_helper("FoldColumn", s:nova_normal_black, s:nova_decoration_medium)

" USER ACTION NEEDED
let s:color_purpose_user_action_needed = s:nova_normal_red
call s:highlight_helper("Error", s:color_purpose_user_action_needed, "")
call s:highlight_helper("ErrorMsg", s:color_purpose_user_action_needed, "")
call s:highlight_helper("WarningMsg", s:color_purpose_user_action_needed, "")
call s:highlight_helper("SpellBad", s:nova_normal_black, s:color_purpose_user_action_needed)
call s:highlight_helper("SpellCap", s:nova_normal_black, s:color_purpose_user_action_needed)
call s:highlight_helper("DiffChange", s:nova_normal_black, s:color_purpose_user_action_needed)
call s:highlight_helper("DiffDelete", s:nova_normal_black, s:color_purpose_user_action_needed)
call s:highlight_helper("Todo", s:color_purpose_user_action_needed, "")

" USER CURRENT STATE
let s:color_purpose_user_current_state = s:nova_normal_cyan
call s:highlight_helper("MatchParen", s:color_purpose_user_current_state, "NONE")
call s:highlight_helper("CursorLineNr", s:color_purpose_user_current_state, "")
call s:highlight_helper("Visual", s:nova_normal_black, s:color_purpose_user_current_state)
call s:highlight_helper("VisualNOS", s:nova_normal_black, s:color_purpose_user_current_state)
call s:highlight_helper("IncSearch", s:nova_normal_black, s:color_purpose_user_current_state)
call s:highlight_helper("Search", s:nova_normal_black, s:color_purpose_user_current_state)
call s:highlight_helper("WildMenu", s:nova_decoration_medium, s:color_purpose_user_current_state)
call s:highlight_helper("Question", s:color_purpose_user_current_state, "")
call s:highlight_helper("MoreMsg", s:color_purpose_user_current_state, "")
call s:highlight_helper("ModeMsg", s:color_purpose_user_current_state, "")
call s:highlight_helper("StatusLine", s:color_purpose_user_current_state, s:nova_decoration_medium)
call s:highlight_helper("PmenuSel", s:nova_decoration_medium, s:color_purpose_user_current_state)
call s:highlight_helper("PmenuThumb", s:color_purpose_user_current_state, s:color_purpose_user_current_state)
call s:highlight_helper("DiffAdd", s:nova_normal_black, s:color_purpose_user_current_state)
call s:highlight_helper("CtrlPMatch", s:nova_normal_black, s:color_purpose_user_current_state)

" CONSTANT
let s:color_purpose_constant = s:nova_normal_cyan
call s:highlight_helper("Constant", s:color_purpose_constant, "")
call s:highlight_helper("Directory", s:color_purpose_constant, "")
call s:highlight_helper("jsObjectBraces", s:color_purpose_constant, "")
call s:highlight_helper("jsBrackets", s:color_purpose_constant, "")
call s:highlight_helper("jsObjectValue", s:color_purpose_constant, "")
call s:highlight_helper("jsParen", s:color_purpose_constant, "")
call s:highlight_helper("jsParenSwitch", s:color_purpose_constant, "")
call s:highlight_helper("jsParenIfElse", s:color_purpose_constant, "")
call s:highlight_helper("jsBracket", s:color_purpose_constant, "")
call s:highlight_helper("jsTernaryIf", s:color_purpose_constant, "")
call s:highlight_helper("jsTemplateString", s:color_purpose_constant, "")
call s:highlight_helper("jsTemplateVar", s:color_purpose_constant, "")
call s:highlight_helper("cssAttr", s:color_purpose_constant, "")
call s:highlight_helper("cssAttrRegion", s:color_purpose_constant, "")
call s:highlight_helper("cssAttributeSelector", s:color_purpose_constant, "")
call s:highlight_helper("htmlTitle", s:color_purpose_constant, "")
call s:highlight_helper("htmlH1", s:color_purpose_constant, "")
call s:highlight_helper("htmlH2", s:color_purpose_constant, "")
call s:highlight_helper("htmlH3", s:color_purpose_constant, "")
call s:highlight_helper("htmlH4", s:color_purpose_constant, "")
call s:highlight_helper("htmlH5", s:color_purpose_constant, "")
call s:highlight_helper("htmlH6", s:color_purpose_constant, "")
call s:highlight_helper("htmlLink", s:color_purpose_constant, "")
call s:highlight_helper("markdownCode", s:color_purpose_constant, "")
call s:highlight_helper("markdownCodeBlock", s:color_purpose_constant, "")
call s:highlight_helper("xmlString", s:color_purpose_constant, "")
call s:highlight_helper("netrwPlain", s:color_purpose_constant, "")
call s:highlight_helper("netrwDir", s:color_purpose_constant, "")
call s:highlight_helper("shDerefSimple", s:color_purpose_constant, "")

" IDENTIFIER
let s:color_purpose_identifier = s:nova_normal_blue
call s:highlight_helper("Identifier", s:color_purpose_identifier, "")
call s:highlight_helper("jsVariableDef", s:color_purpose_identifier, "")
call s:highlight_helper("jsObject", s:color_purpose_identifier, "")
call s:highlight_helper("jsObjectKey", s:color_purpose_identifier, "")
call s:highlight_helper("jsObjectStringKey", s:color_purpose_identifier, "")
call s:highlight_helper("jsFuncArgs", s:color_purpose_identifier, "")
call s:highlight_helper("jsDestructuringBlock", s:color_purpose_identifier, "")
call s:highlight_helper("jsDestructuringArray", s:color_purpose_identifier, "")
call s:highlight_helper("jsDestructuringPropertyValue", s:color_purpose_identifier, "")
call s:highlight_helper("jsSpreadExpression", s:color_purpose_identifier, "")
call s:highlight_helper("jsImportContainer", s:color_purpose_identifier, "")
call s:highlight_helper("jsExportContainer", s:color_purpose_identifier, "")
call s:highlight_helper("jsModuleGroup", s:color_purpose_identifier, "")
call s:highlight_helper("cssClassName", s:color_purpose_identifier, "")
call s:highlight_helper("cssIdentifier", s:color_purpose_identifier, "")
call s:highlight_helper("htmlTagName", s:color_purpose_identifier, "")
call s:highlight_helper("htmlSpecialTagName", s:color_purpose_identifier, "")
call s:highlight_helper("htmlTag", s:color_purpose_identifier, "")
call s:highlight_helper("htmlEndTag", s:color_purpose_identifier, "")
call s:highlight_helper("jsonKeyword", s:color_purpose_identifier, "")
call s:highlight_helper("xmlAttrib", s:color_purpose_identifier, "")
call s:highlight_helper("netrwExe", s:color_purpose_identifier, "")
call s:highlight_helper("shFunction", s:color_purpose_identifier, "")

" STATEMENT
let s:color_purpose_statement = s:nova_normal_yellow
call s:highlight_helper("Statement", s:color_purpose_statement, "")
call s:highlight_helper("jsFuncCall", s:color_purpose_statement, "")
call s:highlight_helper("jsOperator", s:color_purpose_statement, "")
call s:highlight_helper("jsSpreadOperator", s:color_purpose_statement, "")
call s:highlight_helper("cssFunctionName", s:color_purpose_statement, "")
call s:highlight_helper("cssProp", s:color_purpose_statement, "")
call s:highlight_helper("htmlArg", s:color_purpose_statement, "")
call s:highlight_helper("jsxRegion", s:color_purpose_statement, "")
call s:highlight_helper("xmlTag", s:color_purpose_statement, "")
call s:highlight_helper("xmlEndTag", s:color_purpose_statement, "")
call s:highlight_helper("xmlTagName", s:color_purpose_statement, "")
call s:highlight_helper("shCmdSubRegion", s:color_purpose_statement, "")

" TYPE
let s:color_purpose_type = s:nova_normal_green
call s:highlight_helper("Type", s:color_purpose_type, "")
call s:highlight_helper("jsFunction", s:color_purpose_type, "")
call s:highlight_helper("jsStorageClass", s:color_purpose_type, "")
call s:highlight_helper("shFunctionKey", s:color_purpose_type, "")

" GLOBAL
let s:color_purpose_global = s:nova_normal_magenta
call s:highlight_helper("PreProc", s:color_purpose_global, "")
call s:highlight_helper("jsGlobalObjects", s:color_purpose_global, "")
call s:highlight_helper("jsThis", s:color_purpose_global, "")
call s:highlight_helper("cssTagName", s:color_purpose_global, "")
call s:highlight_helper("jsGlobalNodeObjects", s:color_purpose_global, "")
call s:highlight_helper("cssFontDescriptor", s:color_purpose_global, "")

" EMPHASIS
let s:color_purpose_emphasis = s:nova_bright_magenta
call s:highlight_helper("Underlined", s:color_purpose_emphasis, "")
call s:highlight_helper("markdownItalic", s:color_purpose_emphasis, "")
call s:highlight_helper("markdownBold", s:color_purpose_emphasis, "")
call s:highlight_helper("markdownBoldItalic", s:color_purpose_emphasis, "")

" SPECIAL
let s:color_purpose_special = s:nova_bright_red
call s:highlight_helper("Special", s:color_purpose_special, "")
call s:highlight_helper("SpecialKey", s:color_purpose_special, "")
call s:highlight_helper("NonText", s:color_purpose_special, "")
call s:highlight_helper("Title", s:color_purpose_special, "")
call s:highlight_helper("jsBraces", s:color_purpose_special, "")
call s:highlight_helper("jsFuncBraces", s:color_purpose_special, "")
call s:highlight_helper("jsDestructuringBraces", s:color_purpose_special, "")
call s:highlight_helper("jsClassBraces", s:color_purpose_special, "")
call s:highlight_helper("jsParens", s:color_purpose_special, "")
call s:highlight_helper("jsFuncParens", s:color_purpose_special, "")
call s:highlight_helper("jsArrowFunction", s:color_purpose_special, "")
call s:highlight_helper("jsModuleAsterisk", s:color_purpose_special, "")
call s:highlight_helper("cssBraces", s:color_purpose_special, "")
call s:highlight_helper("cssBraces", s:color_purpose_special, "")
call s:highlight_helper("markdownHeadingDelimiter", s:color_purpose_special, "")
call s:highlight_helper("markdownH1", s:color_purpose_special, "")
call s:highlight_helper("markdownH2", s:color_purpose_special, "")
call s:highlight_helper("markdownH3", s:color_purpose_special, "")
call s:highlight_helper("markdownH4", s:color_purpose_special, "")
call s:highlight_helper("markdownH5", s:color_purpose_special, "")
call s:highlight_helper("markdownH6", s:color_purpose_special, "")
call s:highlight_helper("markdownRule", s:color_purpose_special, "")
call s:highlight_helper("markdownListMarker", s:color_purpose_special, "")
call s:highlight_helper("markdownOrderedListMarker", s:color_purpose_special, "")
call s:highlight_helper("markdownLinkText", s:color_purpose_special, "")
call s:highlight_helper("markdownCodeDelimiter", s:color_purpose_special, "")
call s:highlight_helper("netrwClassify", s:color_purpose_special, "")
call s:highlight_helper("netrwVersion", s:color_purpose_special, "")
call s:highlight_helper("CtrlPStats", s:color_purpose_special, "")

" TRIVIAL
let s:color_purpose_trivial = s:nova_bright_black
call s:highlight_helper("Comment", s:color_purpose_trivial, "")
call s:highlight_helper("Ignore", s:color_purpose_trivial, "")
call s:highlight_helper("Conceal", s:color_purpose_trivial, "")
call s:highlight_helper("Noise", s:color_purpose_trivial, "")
call s:highlight_helper("jsNoise", s:color_purpose_trivial, "")
call s:highlight_helper("cssClassNameDot", s:color_purpose_trivial, "")
call s:highlight_helper("jsonQuote", s:color_purpose_trivial, "")
call s:highlight_helper("shQuote", s:color_purpose_trivial, "")
