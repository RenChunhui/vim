scriptencoding utf-8
if exists('g:loaded_defx_icons')
  finish
endif
let g:loaded_defx_icons = 1

let s:enable_syntax_highlight = get(g:, 'defx_icons_enable_syntax_highlight', 1)
let s:column_length           = get(g:, 'defx_icons_column_length', 1)
let s:parent_icon             = get(g:, 'defx_icons_parent_icon', '')
let s:directory_icon          = get(g:, 'defx_icons_directory_icon', '')
let s:mark_icon               = get(g:, 'defx_icons_mark_icon', '*')
let s:default_icon            = get(g:, 'defx_icons_default_icon', '')
let s:directory_symlink_icon  = get(g:, 'defx_icons_directory_symlink_icon', '')
let s:root_opened_tree_icon   = get(g:, 'defx_icons_root_opened_tree_icon', '')
let s:nested_closed_tree_icon = get(g:, 'defx_icons_nested_closed_tree_icon', '')
let s:nested_opened_tree_icon = get(g:, 'defx_icons_nested_opened_tree_icon', '')
let s:copy_icon               = get(g:, 'defx_icons_copy_icon', '')
let s:move_icon               = get(g:, 'defx_icons_move_icon', '')
let s:default_color           = synIDattr(hlID('Normal'), 'fg')

let s:gui_colors = extend({
      \ 'brown':       '905532',
      \ 'aqua':        '3AFFDB',
      \ 'blue':        '689FB6',
      \ 'darkBlue':    '44788E',
      \ 'purple':      '834F79',
      \ 'lightPurple': '834F79',
      \ 'red':         'AE403F',
      \ 'beige':       'F5C06F',
      \ 'yellow':      'F09F17',
      \ 'orange':      'D4843E',
      \ 'darkOrange':  'F16529',
      \ 'pink':        'CB6F6F',
      \ 'salmon':      'EE6E73',
      \ 'green':       '8FAA54',
      \ 'lightGreen':  '31B53E',
      \ 'default':     s:default_color,
      \ }, get(g:, 'defx_icons_gui_colors', {}))

let s:term_colors = extend({
      \ 'brown'       : 130,
      \ 'aqua'        : 66,
      \ 'blue'        : 67,
      \ 'darkBlue'    : 57,
      \ 'purple'      : 60,
      \ 'lightPurple' : 103,
      \ 'red'         : 131,
      \ 'beige'       : 137,
      \ 'yellow'      : 229,
      \ 'orange'      : 208,
      \ 'darkOrange'  : 166,
      \ 'pink'        : 205,
      \ 'salmon'      : 209,
      \ 'green'       : 65,
      \ 'lightGreen'  : 108,
      \ 'default'       : 231,
      \ }, get(g: ,'defx_icons_term_colors', {}))

let s:extensions = extend({
      \ 'sass':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'scss':         { 'icon': '', 'color': s:gui_colors.pink, 'term_color': s:term_colors.pink},
      \ 'html':         { 'icon': '', 'color': s:gui_colors.darkOrange, 'term_color': s:term_colors.darkOrange},
      \ 'ejs':          { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'css':          { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'less':         { 'icon': '', 'color': s:gui_colors.darkBlue, 'term_color': s:term_colors.darkBlue},
      \ 'md':           { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'markdown':     { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'json':         { 'icon': '', 'color': s:gui_colors.beige, 'term_color': s:term_colors.beige},
      \ 'js':           { 'icon': '', 'color': s:gui_colors.beige, 'term_color': s:term_colors.beige},
      \ 'jsx':          { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'rb':           { 'icon': '', 'color': s:gui_colors.red, 'term_color': s:term_colors.red},
      \ 'py':           { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'pyc':          { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'pyo':          { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'pyd':          { 'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'hbs':          { 'icon': '', 'color': s:gui_colors.orange, 'term_color': s:term_colors.orange},
      \ 'conf':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'ini':          { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'yml':          { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'yaml':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'bat':          { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'toml':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'jpg':          { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ 'jpeg':         { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ 'bmp':          { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ 'png':          { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ 'gif':          { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ 'ico':          { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ 'cpp':          { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'cc':           { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'cp':           { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'c':            { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'hs':           { 'icon': '', 'color': s:gui_colors.beige, 'term_color': s:term_colors.beige},
      \ 'lhs':          { 'icon': '', 'color': s:gui_colors.beige, 'term_color': s:term_colors.beige},
      \ 'lua':          { 'icon': '', 'color': s:gui_colors.purple, 'term_color': s:term_colors.purple},
      \ 'sh':           { 'icon': '', 'color': s:gui_colors.lightPurple, 'term_color': s:term_colors.lightPurple},
      \ 'bash':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'zsh':          { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'csh':          { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'diff':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'db':           { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'sql':          { 'icon': '', 'color': s:gui_colors.darkBlue, 'term_color': s:term_colors.darkBlue},
      \ 'go':           { 'icon': '', 'color': s:gui_colors.beige, 'term_color': s:term_colors.beige},
      \ 'rss':          { 'icon': '', 'color': s:gui_colors.darkOrange, 'term_color': s:term_colors.darkOrange},
      \ 'rs':           { 'icon': '', 'color': s:gui_colors.darkOrange, 'term_color': s:term_colors.darkOrange},
      \ 'vim':          { 'icon': '', 'color': s:gui_colors.green, 'term_color': s:term_colors.green},
      \ 'psd':          { 'icon': '', 'color': s:gui_colors.darkBlue, 'term_color': s:term_colors.darkBlue},
      \ 'psb':          { 'icon': '', 'color': s:gui_colors.darkBlue, 'term_color': s:term_colors.darkBlue},
      \ 'ts':           { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'tsx':          { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'vue':          { 'icon': '﵂', 'color': s:gui_colors.green, 'term_color': s:term_colors.green},
      \ 'key':          { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'cs':           { 'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'gemspec':      { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'rake':         { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'swift':        { 'icon': '', 'color': s:gui_colors.orange, 'term_color': s:term_colors.orange},
      \ 'tex':          { 'icon': 'ﭨ', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'webmanifest':  { 'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'webp':         { 'icon': '', 'color': s:gui_colors.aqua, 'term_color': s:term_colors.aqua},
      \ }, get(g:, 'defx_icons_extensions', {}))

let s:exact_matches = extend({
      \ 'dropbox':            {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.ds_store':          {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.gitconfig':         {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.gitignore':         {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.bashrc':            {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.zshrc':             {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.vimrc':             {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.gvimrc':            {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.bashprofile':       {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'favicon.ico':        {'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'license':            {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'node_modules':       {'icon': '', 'color': s:gui_colors.green, 'term_color': s:term_colors.green},
      \ 'react.jsx':          {'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'procfile':           {'icon': '', 'color': s:gui_colors.purple, 'term_color': s:term_colors.purple},
      \ 'dockerfile':         {'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ 'docker-compose.yml': {'icon': '', 'color': s:gui_colors.yellow, 'term_color': s:term_colors.yellow},
      \ 'makefile':           {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'gemfile':            {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.gitlab-ci.yml':     {'icon': '', 'color': s:gui_colors.orange, 'term_color': s:term_colors.orange},
      \ 'cmakelists.txt':     {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'config.ru':          {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'mix.lock':           {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'rakefile':           {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ }, get(g:, 'defx_icons_exact_matches', {}))

let s:pattern_matches = extend({
      \ '.*jquery.*\.js$': {'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ '.*require.*\.js$': {'icon': '', 'color': s:gui_colors.blue, 'term_color': s:term_colors.blue},
      \ '.*materialize.*\.js$': {'icon': '', 'color': s:gui_colors.salmon, 'term_color': s:term_colors.salmon},
      \ '.*materialize.*\.css$': {'icon': '', 'color': s:gui_colors.salmon, 'term_color': s:term_colors.salmon},
      \ '.*mootools.*\.js$': {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ '.*vimrc.*': {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ 'Vagrantfile$': {'icon': '', 'color': s:gui_colors.default, 'term_color': s:term_colors.default},
      \ }, get(g:, 'defx_icon_pattern_matches', {}))

hi default link DefxIconsMarkIcon Statement
hi default link DefxIconsCopyIcon WarningMsg
hi default link DefxIconsMoveIcon ErrorMsg
hi default link DefxIconsDirectory Directory
hi default link DefxIconsParentDirectory Directory
hi default link DefxIconsSymlinkDirectory Directory
hi default link DefxIconsOpenedTreeIcon Directory
hi default link DefxIconsNestedTreeIcon Directory
hi default link DefxIconsClosedTreeIcon Directory

function! defx_icons#get() abort
  return {
        \ 'icons': {
        \   'extensions': s:extensions,
        \   'exact_matches': s:exact_matches,
        \   'pattern_matches': s:pattern_matches,
        \   'exact_dir_matches': get(g:, 'defx_icon_exact_dir_matches', {}),
        \   'parent_icon': s:parent_icon,
        \   'directory_icon': s:directory_icon,
        \   'directory_symlink_icon': s:directory_symlink_icon,
        \   'mark_icon': s:mark_icon,
        \   'default_icon': s:default_icon,
        \   'root_opened_tree_icon': s:root_opened_tree_icon,
        \   'nested_closed_tree_icon': s:nested_closed_tree_icon,
        \   'nested_opened_tree_icon': s:nested_opened_tree_icon,
        \   'copy_icon': s:copy_icon,
        \   'move_icon': s:move_icon,
        \ },
        \ 'settings': {
        \   'enable_syntax_highlight': s:enable_syntax_highlight,
        \   'column_length': s:column_length,
        \ }
        \ }
endfunction
