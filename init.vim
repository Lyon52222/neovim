" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
"
"Author @lyon  Reference @theniceboy
  
" ===
" === 第一次使用时自动加载
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



" ===
" === 指定python版本
" ===
let g:python3_host_prog = '/usr/local/anaconda3/bin/python3'

let mapleader = ","
let g:maplocalleader = "\<space>" 
noremap \ ,


" 快捷键配 -----------------------------------
noremap fw     :w<CR>
noremap fq     :q<CR>
noremap fwq	:wq<CR>
noremap fqq	:q!<CR>
"vim自带ZZ,ZQ

"数字+-
noremap + <C-a>
noremap - <C-x>

" 文件编辑
nnoremap Y y$
vnoremap Y "+y
noremap <leader>J J
noremap <leader>C gJ


"退出插入模式
"inoremap JJ <Esc>
"自带CTRL-[

"快速移动
noremap <C-l> *
noremap <C-h> #
noremap <C-j> 5j
noremap <C-k> 5k
"键盘自带Fn ; '
noremap <localleader><localleader> :noh<CR>

" 快速选择窗口
noremap <down> <C-w>j
noremap <up> <C-w>k
noremap <left> <C-w>h
noremap <right> <C-w>l

" 快速划分窗口
noremap <leader>sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap <leader>sk :set splitbelow<CR>:split<CR>
noremap <leader>sl :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap <leader>sh :set splitright<CR>:vsplit<CR>

" 快速调整窗口大小
nmap <silent> <M-l> :vertical resize -5<CR>
nmap <silent> <M-k> :resize -5<CR>
nmap <silent> <M-j> :resize +5<CR>
nmap <silent> <M-h> :vertical resize +5<CR>

" tab相关
noremap tn :tabe<CR>
"noremap tj :-tabnext<CR>
"noremap tk :+tabnext<CR>
noremap tj :+tabmove<CR>
noremap tk :-tabmove<CR>
noremap tc :tabclose<CR>
"自带 gt gT 1gt

" Opening a terminal window
"noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
"改用vim-terminal-help中的alt+n

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" 设置外观 -------------------------------------
"colorscheme one
colo seoul256
"set background=dark
set number                      "显示行号 
augroup relative_numbser
 autocmd!
 autocmd InsertEnter * :set norelativenumber
 autocmd InsertLeave * :set relativenumber
augroup END
"set showtabline=0               "隐藏顶部标签栏"
set guioptions-=r               "隐藏右侧滚动条" 
set guioptions-=L               "隐藏左侧滚动条"
set guioptions-=b               "隐藏底部滚动条"
set cursorline                  "突出显示当前行"
set cursorcolumn                "突出显示当前列"
set langmenu=zh_CN.UTF-8        "显示中文菜单
set t_Co=256
" 变成辅助 -------------------------------------
"syntax on                           "开启语法高亮
"set nowrap                      "设置代码不折行"
set wrap
set fileformat=unix             "设置以unix的格式保存文件"
set cindent                     "设置C样式的缩进格式"
set tabstop=4                   "一个 tab 显示出来是多少个空格，默认 8
set shiftwidth=4                "每一级缩进是多少个空格
set backspace+=indent,eol,start "set backspace&可以对其重置
set showmatch                   "显示匹配的括号"
set showcmd						"现实指令"
set showmode					"现实当前命令模式"
set scrolloff=5                 "距离顶部和底部5行"
set laststatus=2                "命令行为两行"
"离开 Insert 模式时自动切换至英文输入法
"该选项只在Gvim中有用
"set noimdisable
set autochdir "自动切换到文件当前目录
" 其他杂项 -------------------------------------
set mouse=                     "禁用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase                  "忽略大小写"
set smartcase					"全小写时忽略大小写，有大写是不忽略"
set incsearch
set hlsearch                    "高亮搜索项"
set noexpandtab                 "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread					"打开文件监视"
autocmd bufwritepost $MYVIMRC source $MYVIMRC "保存后自动应用配置"

" 再次打开文件，定位到上次退出时的位置
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
endif


" 插件 -----------------------------------------
call plug#begin('~/.vim/plugged')

	"colorscheme
	Plug 'rakr/vim-one'
	Plug 'junegunn/seoul256.vim'
	"文件导航
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'liuchengxu/vista.vim'
	Plug 'brooth/far.vim'
	Plug 'pechorin/any-jump.vim'
	"功能扩展
	Plug 'terryma/vim-smooth-scroll'
	Plug 'mg979/vim-xtabline'
	Plug 'mhinz/vim-startify'
	Plug 'bling/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'kshenoy/vim-signature'
	Plug 'skywind3000/vim-terminal-help'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'

	" 辅助编辑
	Plug 'junegunn/vim-easy-align'
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets',{'for':['python','cpp','go']}
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'tpope/vim-surround'
	Plug 'gcmt/wildfire.vim'
	Plug 'tpope/vim-repeat'
	Plug 'junegunn/vim-after-object'
	"Plug 'theniceboy/argtextobj.vim'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'babaybus/DoxygenToolkit.vim'

	" 移动增强
	Plug 'easymotion/vim-easymotion'
	Plug 'matze/vim-move'
	Plug 'rhysd/clever-f.vim'
	" 调试
	Plug 'puremourning/vimspector'

	"Markdown
	Plug 'mzlogin/vim-markdown-toc',{'for':'markdown'}
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown',{'for':'markdown'}
	Plug 'iamcco/markdown-preview.nvim',{'for':'markdown'}
	"coc.nvim
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Latex
	Plug 'lervag/vimtex',{'for':'tex'}
	" Go
	Plug 'fatih/vim-go', { 'for':['go','vim-plug'],'do': ':GoUpdateBinaries' }
	"Python
	Plug 'tell-k/vim-autopep8',{'for':'python'}
	Plug 'Yggdroot/indentLine',{'for':'python'}
	Plug 'jpalardy/vim-slime',{'for':'python'}
	Plug 'numirias/semshi', { 'for':'python','do': ':UpdateRemotePlugins'}
	"leetcode
	Plug 'ianding1/leetcode.vim'


	" 视觉增强
	Plug 'ryanoasis/vim-devicons'
	Plug 'luochen1990/rainbow'
	Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }

	" 其它
	Plug 'lambdalisue/suda.vim'
	Plug 'ybian/smartim'

	" git
	Plug 'airblade/vim-gitgutter'
	Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

	" MiniApp
	Plug 'skywind3000/asynctasks.vim'
	Plug 'skywind3000/asyncrun.vim'
	Plug 'itchyny/calendar.vim'
	call plug#end()
" 插件END ----------------------------------------

" ===
" === calendar.vim
" ===
noremap \\ :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" ===
" === AsyncRun
" ===
noremap <leader>gp :AsyncRun git push<CR>


" ===
" === AsyncTasks
" ===
let g:asyncrun_open = 6

" ===
" === vim-gitgutter
" ===
" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
"nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>gN :GitGutterPrevHunk<CR>
nnoremap <LEADER>gn :GitGutterNextHunk<CR>

" ===
" === vim-easymotion
" ===
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1

" ===
" === vimspector
" ===
let g:vimspector_enable_mappings = 'HUMAN'

" ===
" === any-jump
" ===
"let g:any_jump_disable_default_keybindings = 1
" Normal mode: Jump to definition under cursore
nnoremap <localleader>g :AnyJump<CR>
" Visual mode: jump to selected text in visual mode
xnoremap <localleader>g :AnyJumpVisual<CR>
" Normal mode: open previous opened file (after jump)
nnoremap <localleader>ab :AnyJumpBack<CR>
" Normal mode: open last closed search window again
nnoremap <localleader>al :AnyJumpLastResults<CR>

" ===
" === vim-after-object
" ===
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')

" ===
" === rainbow
" ===
let g:rainbow_active = 1

" ===
" === vim-move
" ===
let g:move_key_modifier = 'S'

" ===
" === lazygit
" ===
noremap <localleader>lg :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
"let g:lazygit_use_neovim_remote = 1 " for neovim-remote support

" ===
" === vim-go
" ===
"let g:go_gopls_enabled = 1
" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []
" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0
" run go imports on file save
let g:go_fmt_command = "goimports"
" disable default go mapping
"let g:go_def_mapping_enabled = 0
" disable K to open ducument
let g:go_doc_keywordprg_enabled = 0
" automatically highlight variable your cursor is on
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_auto_sameids = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0

" ===
" === smartim
" ===
let g:smartim_default = 'com.apple.keylayout.ABC'
function! Multiple_cursors_before()
  let g:smartim_disable = 1
endfunction
function! Multiple_cursors_after()
  unlet g:smartim_disable
endfunction

" ===
" === vim-slime
" ===
"let g:slime_target = "tmux"
"let g:slime_default_config = {"socket_name": "/private/tmp/tmux-501/default", "target_pane": ":1.2"}
"let g:slime_python_ipython = 1
let g:slime_target = "neovim"

" ===
" === far.vim
" ===
" shortcut for far.vim find
nnoremap <silent> <leader>F :Farf<cr>
vnoremap <silent> <leader>F :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <leader>R :Farr<cr>
vnoremap <silent> <leader>R :Farr<cr>

" ===
" === autopairs
" ===
let g:AutoPairsShortcutToggle = '<M-p>'


" ===
" === semshi python代码高亮
" ===
"nmap <silent> <Tab> :Semshi goto name next<CR>
"nmap <silent> <S-Tab> :Semshi goto name prev<CR>
"nmap <silent> <leader>c :Semshi goto class next<CR>
"nmap <silent> <leader>C :Semshi goto class prev<CR>

"nmap <silent> <leader>f :Semshi goto function next<CR>
"nmap <silent> <leader>F :Semshi goto function prev<CR>

"nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
"nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>

"nmap <silent> <leader>ee :Semshi error<CR>
"nmap <silent> <leader>ge :Semshi goto error<CR>
"let g:semshi#error_sign = 'false'


" ===
" === EasyAlign
" ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"配置一些自定义符号
let g:easy_align_delimiters ={
\ '>':{'pattern':'>>\|=>\|>'},
\ '/':{
\     'pattern':'//\+\|/\*\|\*/',
\     'delimiter_align':'l',
\     'ignore_groups':['!Comment']},
\ ']':{
\     'pattern':'[[\]]',
\     'left_margin':0,
\     'right_margin':0,
\     'stick_to_left':0
\   },
\ ')':{
\     'pattern':'[()]',
\     'left_margin':0,
\     'right_margin':0,
\     'stick_to_left':0
\   },
\ 'd':{
\     'pattern':' \(\S\+\s*[;=]\)\@=',
\     'left_margin':0,
\     'right_margin':0
\   }
\ }


" ===
" === Goyo
" ===
noremap <leader>go :Goyo<CR>


" ===
" === limelight
" ===
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!



" ===
" ===Smoth-scroll
" ===
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" ===
" ===vim-hexokinase
" ===
let g:Hexokinase_highlighters = [ 'foregroundfull' ]

" ===
" ===vista配置----------------------------------------
" ===
"" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ 'py': 'coc',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']
"noremap <M-v> :Vista!!<CR>
noremap <localleader>v :Vista!!<CR>


" ===
" ===autopep8配置-----------------------------------
" ===
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>



" ===
" ===fzf 配置---------------------------------------
" ===
" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
nnoremap <M-f> :Files<CR>
nnoremap <M-t> :Rg<CR>
nnoremap <M-i> :History<CR>
nnoremap <M-b> :Buffers<CR>



" ===
" ===leetcode配置------------------------------------
" ===
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>

let g:leetcode_china = 1
let g:leetcode_solution_filetype = 'cpp'
let g:leetcode_browser = 'chrome'
let g:leetcode_hide_paid_only = 1




" ===
" ===vim-airline 配置--------------------------------
" ===
" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " 主题
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
"nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
"nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
"nmap <leader>q :bp<cr>:bd #<cr>
" 修改了一些个人不喜欢的字符
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR" 


" ===
" ===vim-startify配置-------------------------------
" ===
nmap <leader>st :Startify<CR>
let g:startify_files_number = 20


" ===
" ===indentLine配置 ------------------------------
" ===
let g:indent_guides_guide_size  = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level = 2  " 从第二层开始可视化显示缩进


" ===
" ===MarkDown配置 ---------------------------------
" ===
let g:vim_markdown_math = 1




" vim-markdown 配置----------------------------
" :help vim-markdwon
" [[ "跳转上一个标题
" ]] "跳转下一个标题
" ]c "跳转到当前标题
" ]u "跳转到副标题
" zr "打开下一级折叠
" zR "打开所有折叠
" zm "折叠当前段落
" zM "折叠所有段落
":Toc "显示目录



" ===
" ===MarkDownPreview配置 --------------------------
" ===
nmap <C-p> <Plug>MarkdownPreviewToggle
let g:mkdp_browser = '/Applications/Google Chrome.app'

" ===
" ===vim-visual-mutil 配置------------------------
" ===
" select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
" create cursors vertically with Ctrl-Down/Ctrl-Up
" select one character at a time with Shift-Arrows
" press n/N to get next/previous occurrence
" press [/] to select next/previous cursor
" press q to skip current and get next occurrence
" press Q to remove current cursor/selection
" start insert mode with i,a,I,A



" ===
" ===ultisnips配置 --------------------------------
" ===
"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>' 
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>' 
"设置打开配置文件时为垂直打开
let g:UltiSnipsEditSplit="vertical"
noremap <localleader>ul :UltiSnipsEdit<CR>


" ===
" ===coc.nvim配置---------------------------------
" ===
let g:coc_global_extensions = ['coc-explorer',
								\'coc-diagnostic','coc-css','coc-html','coc-lists',
								\'coc-highlight',
								\'coc-vimtex',
								\'coc-json',
								\'coc-yank',
								\'coc-vimlsp',
								\'coc-pyright',
								\'coc-actions',
								\'coc-clangd',
								\'coc-snippets']
set updatetime=100
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <M-TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-c> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <localleader>e :CocCommand explorer<CR>

nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@


" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" ===
" === coc-yank
" ===
nnoremap <silent> <localleader>y  :<C-u>CocList --normal yank<cr>




" ===
" ===vimtex配置 -----------------------------------
" ===
" Prevent that vim detect a file with the tex suffix as a plaintex
let g:tex_flavor='latex'
" Set the viewer method
let g:vimtex_view_method='skim'
" 设置编译引擎
let g:vimtex_compiler_latexmk_engines = {'_': '-xelatex'}
" Never opened/closed the quickfix window automatically. The quickfix window shows the errors and/or warnings when compile, and we can open the quickfix windows use \le

set conceallevel=1
let g:vimtex_quickfix_mode=0
" 最后两行开启自动隐藏功能,开启了这个功能，除了你光标所在的那一行之外，文本里夹杂的LaTeX代码就都会隐藏或者替换成其他符号
let g:tex_conceal='abdmg'
" let g:vimtex_compiler_progname = 'nvr'
nnoremap <localleader>le :VimtexErrors<CR>


" ===
" === Markdown Settings
" ===
" Snippets
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ] 
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>

" ===
" === vim-repeat
" ===
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" ===
" === 终端配置
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
"tnoremap <C-N> <C-\><C-N>
"tnoremap <C-O> <C-\><C-N><C-O>
"改用vim-terminal-help中的alt+q
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" ===
" ===自动执行代码
" ===
map <F2> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
	:$
endfunc


" ===
" === Necessary Commands to Execute
" ===
exec "nohlsearch"
