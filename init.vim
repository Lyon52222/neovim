if empty(glob('~/.config/nvim/autoload/plug.vim'))
silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"指定python
let g:python3_host_prog = '/usr/local/anaconda3/bin/python3'

let mapleader = ","
noremap \ ,


" 快捷键配 -----------------------------------
nmap fw     :w<CR> 				"保存文件"
nmap fq     :q<CR>				"退出文件"
nmap fwq	:wq<CR>				"保存退出"
nmap fqq	:q!<CR>				"放弃保存退出"

" Ctrl+hjkl 光标移动
inoremap <M-l> <RIGHT>
inoremap <M-k> <UP>
inoremap <M-h> <LEFT>
inoremap <M-j> <DOWN>
inoremap <M-o> <C-LEFT>
inoremap <M-p> <C-RIGHT>

inoremap JJ <Esc>

" 快速选择窗口
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-h> <C-w>h
map <S-l> <C-w>l

" 快速划分窗口
nnoremap <leader>sp :split<CR>
nnoremap <leader>vs :vsplit<CR>

" 快速调整窗口大小
nmap <silent> <M-l> :vertical resize -5<CR>
nmap <silent> <M-k> :resize -5<CR>
nmap <silent> <M-j> :resize +5<CR>
nmap <silent> <M-h> :vertical resize +5<CR>


" 设置外观 -------------------------------------
colorscheme one
set background=dark
set number                      "显示行号 
set relativenumber
augroup relative_numbser
 autocmd!
 autocmd InsertEnter * :set norelativenumber
 autocmd InsertLeave * :set relativenumber
augroup END
set showtabline=0               "隐藏顶部标签栏"
set guioptions-=r               "隐藏右侧滚动条" 
set guioptions-=L               "隐藏左侧滚动条"
set guioptions-=b               "隐藏底部滚动条"
set cursorline                  "突出显示当前行"
set cursorcolumn                "突出显示当前列"
set langmenu=zh_CN.UTF-8        "显示中文菜单
set t_Co=256
" 变成辅助 -------------------------------------
syntax on                           "开启语法高亮
set nowrap                      "设置代码不折行"
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
" 其他杂项 -------------------------------------
set mouse=a                     "启用鼠标"
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


" 插件 -----------------------------------------
call plug#begin('~/.vim/plugged')
"General {{{
	Plug 'mhinz/vim-startify'
	Plug 'scrooloose/nerdtree'							"文件树"
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'bling/vim-airline'
	Plug 'rakr/vim-one'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdcommenter'
	Plug 'jiangmiao/auto-pairs',{'for':['python','php','c','cpp']}
	Plug 'easymotion/vim-easymotion'
	Plug 'SirVer/ultisnips'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	"Plug 'ctrlpvim/ctrlp.vim'
	Plug 'tpope/vim-surround'
	Plug 'gcmt/wildfire.vim'
	Plug 'tpope/vim-repeat'
	Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"}}}


" jupyter-vim配置-----------------------------
let g:jupyter_mapkeys = 0
" Run current file
nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
" jupyter-vim配置-----------------------------


"Markdown {{{

	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'iamcco/markdown-preview.nvim'
"}}}

"coc.nvim{{{
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"}}}


"Latex {{{
	Plug 'lervag/vimtex',{'for':'latex'}
"}}}


"Python {{{
	Plug 'tell-k/vim-autopep8',{'for':'python'}
	Plug 'Yggdroot/indentLine',{'for':'python'}
	"Plug 'Shougo/deoplete.nvim',{ 'do': ':UpdateRemotePlugins', 'for': 'python' }
	"Plug 'zchee/deoplete-jedi',{'for': 'python'}
	"Plug 'davidhalter/jedi-vim',{'for': 'python'}
	"Plug 'szymonmaszke/vimpyter' "vim-plug
	Plug 'jupyter-vim/jupyter-vim'
	Plug 'honza/vim-snippets',{'for':['python','cpp']}
"}}}
" leetcode {{{
	Plug 'ianding1/leetcode.vim'
"}}}
call plug#end()
" 插件END ----------------------------------------


" autopep8配置-----------------------------------
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
" autopep8配置-----------------------------------







" fzf 配置---------------------------------------
" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

" fzf 配置---------------------------------------


" leetcode配置------------------------------------
nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>

let g:leetcode_china = 1
let g:leetcode_solution_filetype = 'cpp'
let g:leetcode_browser = 'chrome'
let g:leetcode_hide_paid_only = 1

" leetcode配置------------------------------------




" vim-airline 配置--------------------------------
" 设置状态栏
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " 主题
let g:airline#extensions#keymap#enabled = 1
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
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>
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
" vim-airline 配置--------------------------------



" vim-startify配置-------------------------------
nmap <leader>st :Startify<CR>
let g:startify_files_number = 20
" vim-startify配置-------------------------------


" wildfire配置-----------------------------------
" This selects the next closest text object.
"map <SPACE> <Plug>(wildfire-fuel)

" This selects the previous closest text object.
"vmap <C-SPACE> <Plug>(wildfire-water)
" wildfire配置-----------------------------------

" vimpyter 配置---------------------------------
"autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
"autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>
"autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>
" vimpyter 配置---------------------------------


"jedi 配置--------------------------------------
" disable autocompletion, cause we use deoplete for completion
"let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"
"jedi 配置--------------------------------------



"deoplete配置---------------------------------
"let g:deoplete#enable_at_startup = 1
"deoplete配置---------------------------------


" indentLine配置 ------------------------------
let g:indent_guides_guide_size  = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level = 2  " 从第二层开始可视化显示缩进
" indentLine配置 -------------------------------



" NERDTree快捷配置 -----------------------------
" Start NERDTree and leave the cursor in it.
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <S-n> :NERDTreeToggle<CR>
nnoremap <S-f> :NERDTreeFind<CR>
" NERDTree快捷配置 -----------------------------



" MarkDown配置 ---------------------------------
let g:vim_markdown_math = 1
" MarkDown配置 ---------------------------------

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
" vim-markdown 配置----------------------------

" MarkDownPreview配置 --------------------------
nmap <C-p> <Plug>MarkdownPreviewToggle
let g:mkdp_browser = '/Applications/Google Chrome.app'
" MarkDownPreview配置end -----------------------


" vim-visual-mutil 配置------------------------
" select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
" create cursors vertically with Ctrl-Down/Ctrl-Up
" select one character at a time with Shift-Arrows
" press n/N to get next/previous occurrence
" press [/] to select next/previous cursor
" press q to skip current and get next occurrence
" press Q to remove current cursor/selection
" start insert mode with i,a,I,A
" vim-visual-mutil 配置------------------------
 
" ctrlp 配置-----------------------------------
" let g:ctrlp_map = '<M-f>'
" let g:ctrlp_cmd = 'CtrlP'
" ctrlp 配置-----------------------------------

" ultisnips配置 --------------------------------
"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>' 
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>' 
"设置打开配置文件时为垂直打开
let g:UltiSnipsEditSplit="vertical"
" ultinips配置end------------------------------

" coc.nvim配置---------------------------------
let g:coc_global_extensions = ['coc-json','coc-vimlsp','coc-pyright','coc-snippets']
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
inoremap <silent><expr> <c-o> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.

"nnoremap <silent> K :call <SID>show_documentation()<CR>

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
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

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

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" 切换coc-python 代码审计环境
nmap <F4> :CocCommand python.setInterpreter
"
"" coc.nvim配置---------------------------------


" vimtex配置 -----------------------------------
" Prevent that vim detect a file with the tex suffix as a plaintex
let g:tex_flavor='latex'
" Set the viewer method
let g:vimtex_view_method='skim'
" Never opened/closed the quickfix window automatically. The quickfix window shows the errors and/or warnings when compile, and we can open the quickfix windows use \le
let g:vimtex_quickfix_mode=0
" 最后两行开启自动隐藏功能,开启了这个功能，除了你光标所在的那一行之外，文本里夹杂的LaTeX代码就都会隐藏或者替换成其他符号
let g:tex_conceal='abdmg'
" let g:vimtex_compiler_progname = 'nvr'
" vimtex配置end --------------------------------


" 自动执行代码
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'java'
                exec "!javac %"
                exec "!time java %<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                exec "!clear"
                exec "!time python3 %"
        elseif &filetype == 'html'
                exec "!chrome % &"
        elseif &filetype == 'go'
                " exec "!go build %<"
                exec "!time go run %"
        elseif &filetype == 'mkd'
                exec "!~/.vim/markdown.pl % > %.html &"
                exec "!chrome %.html &"
        endif
endfunc
