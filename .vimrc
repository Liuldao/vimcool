"+===================+
"+      VIM-COOL     +
"+  Author: JACK LIU +    
"+  Create: 2018     +
"+ License: MIT      +
"+===================+



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "."      " 定义<leader>键
colorscheme gruvbox   " 设置主题
set background=dark      " 设置背景颜色
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set mouse=a              " 使用鼠标
set cursorline           " 高亮显示当前行
set cursorcolumn         " 高亮显示当前列
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set backspace=2          " 修复mac下面无法使用<delete>按键
set visualbell           " 闪屏报警
set history=100          " 历史
autocmd BufWritePost $MYVIMRC source $MYVIMRC "配置自动生效

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype on " 开启文件检查
filetype plugin on " 开启不通类型插件加载
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码
set autowrite            " 自动保存
set autochdir            " 自动切换目录
set autoread             " 自动读取
set textwidth=79         " 文本长度

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h13 " 设置字体
    set guioptions-=m           " 隐藏菜单栏
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=L           " 隐藏左侧滚动条
    set guioptions-=r           " 隐藏右侧滚动条
    set guioptions-=b           " 隐藏底部滚动条
    set showtabline=0           " 隐藏Tab栏
    set guicursor=n-v-c:ver5    " 设置光标为竖线
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PYTHON PEP8 格式
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 au BufNewFile,BufRead *.py
     \ set tabstop=4     |
     \ set softtabstop=4 |
     \ set shiftwidth=4  |
     \ set textwidth=79  |
     \ set expandtab     |
     \ set autoindent    |
     \ set fileformat=unix|


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 分屏配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 "分配大小一样
set equalalways
if has("autocmd")
    autocmd VimResized * normal =
endif
"使用鼠标拽拖:
if has('mouse')
    set mouse=a
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"+----------------------------------+
"+             美化
"+----------------------------------+
Plug 'chxuan/vimplus-startify'          " 开始界面导航
Plug 'Yggdroot/indentLine'              " 显示缩进线
Plug 'kien/rainbow_parentheses.vim'     " 括号高亮
Plug 'edkolev/tmuxline.vim'             " tmux状态栏
Plug 'gko/vim-coloresque'               " CSS颜色高亮
Plug 'airblade/vim-gitgutter'           " 显示git状态
Plug 'bronson/vim-trailing-whitespace'  " 多余空白，显示
Plug 'vim-airline/vim-airline'          " 状态栏美化
Plug 'vim-airline/vim-airline-themes'   " 状态栏主题
Plug 'morhetz/gruvbox'                  " 主题
"+----------------------------------+
"+            通用
"+----------------------------------+
Plug 'scrooloose/nerdtree'              " 文件浏览管理
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " 文件高亮
Plug 'Xuyuanp/nerdtree-git-plugin'      " 文件Git插件
Plug 'jiangmiao/auto-pairs'             " 自动匹配符号
Plug 'ryanoasis/vim-devicons'           " 文件图标
Plug 'majutsushi/tagbar'                " 函数大纲浏览
Plug 'SirVer/ultisnips'                 " 代码片段
Plug 'skywind3000/asyncrun.vim'         " 异步编译运行
Plug 'tpope/vim-fugitive'               " Git
"+----------------------------------+
"+            补全
"+----------------------------------+
Plug 'Valloric/YouCompleteMe'           " YCM 语义自动补全
"+----------------------------------+
"+            检查
"+----------------------------------+
Plug 'w0rp/ale' " ale异步检查
"+----------------------------------+
"+            搜索
"+----------------------------------+

"+----------------------------------+
"+            编辑
"+----------------------------------+
Plug 'scrooloose/nerdcommenter'         " 注释

"+----------------------------------+
"+            python
"+----------------------------------+
Plug 'yodiaditya/vim-pydjango'
Plug 'hdima/python-syntax'
Plug 'plytophogy/vim-virtualenv'
Plug 'vim-scripts/indentpython.vim'
Plug 'davidhalter/jedi-vim'
"+----------------------------------+
"+             GO
"+----------------------------------+
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
"+----------------------------------+
"+             php
"+----------------------------------+
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}
call plug#end()            

" 关闭窗口
nnoremap <leader>q :q<cr>
nnoremap <leader><leader>e :q！<cr>

" 保存
nnoremap <leader>w :w<cr>
nnoremap <leader><leader>e :w！<cr>

" 分屏
nnoremap <leader><leader>v :vs<cr>
nnoremap <leader><leader>s :sp<cr>

" 更新vimrc
nnoremap <leader>e :edit $MYVIMRC<cr>

" 打开当前光标所在单词的vim帮助文档
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr>

" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif


"davidhalter/jedi-vim
let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "<leader>a"
let g:jedi#goto_assignments_command = "<leader>s"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "q"
let g:jedi#usages_command = "<leader>w"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>e"

" ale
let g:ale_set_highlights = 1
"**自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"**在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"***显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_enter = 0 " 打开文件时不进行检查
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'css': ['csslint', 'stylelint'],
\   'html': ['HTMLHint'],
\   'javascript': ['jshint', 'eslint'],
\   'go': ['golint', 'go vet', 'go build'],
\}
"**rust
let g:ale_linters = {'rust': ['rustc']}



" vim-virtualenv
nnoremap <leader>z :VirtualEnvDeactivate<cr> " 停用当前的virtualenv
nnoremap <leader>x :VirtualEnvList<cr> " 列出所有virtualenvs
nnoremap <Leader>v :VirtualEnvActivate <Tab> " 激活


" python-syntax
let python_highlight_all = 1



" Vim-Go
nnoremap <leader>g :GoFmt<cr>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_list_type = "quickfix"
let g:go_test_timeout = '10s'
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
let g:go_addtags_transform = "camelcase"
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl


" nerdtree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=1
let NERDTreeWinSize=35
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&b:NERDTree.isTabTree()) | q | endif
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

""vim-devicons
set guifont=DroidSansMono_Nerd_Font:h11


" YCM
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_confirm_extra_conf = 0 
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '✗'
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1 
let g:ycm_complete_in_strings = 1 
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_python_binary_path = 'python'
let g:ycm_enable_diagnostic_signs  =  1
let g:ycm_add_preview_to_completeopt = 0 " 文档预览关闭
nnoremap <leader>rr :YcmRestartServer<cr>
nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
nnoremap <leader>o :YcmCompleter GoToInclude<cr>
nnoremap <leader>b :YcmCompleter FixIt<cr>
nmap <F3> :YcmDiags<cr>



" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



" tabular
nmap <F1> :TagbarToggle<CR>
let g:tagbar_autofocus = 1


" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>


"nerdcomments
let g:NERDSpaceDelime=1             " 在默认情况下添加注释分隔后的空间
"let g:NERDCompactSexyComs = 1      " 使用紧凑语法进行美化的多行注释
"let g:NERDDefaultAlign = 'left'    " 对齐行向注释分隔符向左冲洗而不是跟随代码缩进
"let g:NERDAltDelims_java = 1       " 设置语言默认使用其备用定界符
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }    " 加入自己的自定义格式或覆盖默认
"let g:NERDCommentEmptyLines = 1       " 允许注释和反转空行（在注释区域时很有用）
"let g:NERDTrimTrailingWhitespace = 1  " 在取消注释时启用尾部空格的修剪
"let g:NERDToggleCheckAllLines = 1     " 启用NERDCommenterToggle检查所有选择的线被注释或不


""indentline 
let g:indentLine_enabled = 1
let g:indentline_char='┆ '
let g:indentLine_color_term = 239


""UltiSnips 
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


""AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='dark'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_detect_modified=1
let g:airline_highlighting_cache = 0
let g:airline#extensions#whitespace#enabled = 0

let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(L'
let airline#extensions#ale#close_lnum_symbol = ')'

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_mode_map =
\ {   '__' : '-',
      \ 'c'  : 'C',
      \ 'i'  : 'I',
      \ 'ic' : 'I',
      \ 'v'  : 'V',
      \ 'ix' : 'I',
      \ 'n'  : 'N',
      \ 'ni' : 'N', 'no' : 'N',  'R'  : 'R', 'Rv' : 'R', 's'  : 'S', 'S'  : 'S'}

let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 79,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
      \ }



"Startify
let g:startify_custom_header = [
            \ '         VIM-COOL             ',
            \ '     Author: Jack Liu         ',
            \ '    Licence:  MIT             ',
            \ '      Date:  2018-12-23       ',
            \ '    Version:  1.0(2018)       ',
            \]
let g:startify_custom_footer = [
            \ '【  🤗  】',
            \]
let g:startify_skiplist = [
       \ '^/tmp',
       \ ]
let g:startify_bookmarks = [ 
           \ '~/code',
            \ '~/go',
            \ '~/.vimrc',
            \ '~/.zshrc',
          \]
let g:startify_session_autoload = 1
let g:startify_files_number = 20


""Asyncrun
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
let g:asyncrun_encs='utf-8' 
let g:asyncrun_status = "stopped" 
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
nnoremap <F4> :call asyncrun#quickfix_toggle(6)<cr>
let $PYTHONUNBUFFERED=1
nnoremap <F5> :call <SID>compile_and_run()<CR>

function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! time python3 %"
    elseif &filetype == 'go'
        exec "AsyncRun go build '%:p:h' "
    endif
endfunction

