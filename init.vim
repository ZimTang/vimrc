set guifont=Consolas:h14
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 隐藏GVIM菜单及设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 窗口大小
set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist

let mapleader = "\<space>" "定义<leader>键
set nocompatible    "设置不兼容原始vi模式
filetype on     "设置开启文件类型侦测
filetype plugin on  "加载对应文件类型插件
set noeb        "关闭错误提示
syntax on       "自动语法高亮
set t_Co=256        "开启256色支持
set cmdheight=2    "设置命令行高度
set showcmd     "select模式下显示选中的行数
set ruler       "总是显示光标的位置
set laststatus=2    "总是显示状态栏
set number      "开启行号显示
set cursorline      "高亮显示当前行
set whichwrap+=<,>,h,l  "设置光标键跨行
set virtualedit=block,onemore   "允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进与排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent      "设置自动缩进
set smartindent     "智能选择对齐方式
filetype indent on  "自适应不同语言的智能缩进
set expandtab       "将制表符扩展为空格
set tabstop=4       "设置编辑时制表符所占的空格数
set shiftwidth=4    "设置格式化时制表符占用的空格数
set softtabstop=4   "设置4个空格为制表符
set smarttab        "在行和段开始处使用制表符
"set nowrap         "禁止折行
set backspace=2     "使用回车键正常处理indent.eol,start等

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu        "vim自身命令行模式智能补全
set completeopt-=preview    "补全时不显示窗口，只显示补全列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup        "设置不备份
set noswapfile      "禁止生成临时文件
set autoread        "文件在vim之外修改过，自动重新载入
set autowrite       "设置自动保存
set confirm         "在处理未保存或只读文件时，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 优化设置
"映射 esc 键为 jk
inoremap jk <Esc>
"刷新配置
nnoremap <leader>r :source $MYVIMRC<cr>
"快速打开vim配置文件：_vimrc
nnoremap <leader><leader>e :e C:/Users/23510/AppData/Local/nvim/init.vim<cr>

" <leader>+q 快速退出vim
nnoremap <leader>q :q<cr>

"插入模式快速到另一个字符右边，对于配对的符号（如括号）很有用
imap <c-a> <Esc>la
"插入模式移动到下一行
imap <c-d> <Esc>o


" vim-plug
" ******************************BEGIN******************************
call plug#begin('~/.vim/plugged')
"中文vim入门，不需要可注释掉
Plug 'yianwillis/vimcdoc'
"vim-colorschemes
Plug 'flazz/vim-colorschemes'
"change scheme
Plug 'chxuan/change-colorscheme'
"incsearch
Plug 'haya14busa/incsearch.vim'
"vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"缩进
Plug 'yggdroot/indentline'
" nerdtree
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
"nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
"vim-easymotion
Plug 'easymotion/vim-easymotion'
"vim auto pair
Plug 'jiangmiao/auto-pairs'
"vim-surround
Plug 'tpope/vim-surround'
"vim-commentary
Plug 'tpope/vim-commentary'
" multiple-cursors
Plug 'terryma/vim-multiple-cursors'
"vim expand region
Plug 'terryma/vim-expand-region'
"tagbar
Plug 'majutsushi/tagbar'
"vim-endwise
Plug 'tpope/vim-endwise'
"vim start page
Plug 'mhinz/vim-startify'
"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"彩虹括号增强
Plug 'luochen1990/rainbow'
"对齐插件
Plug 'godlygeek/tabular'
"快速打开大文件
Plug 'vim-scripts/LargeFile'
"ale
Plug 'dense-analysis/ale'
"fugitive
Plug 'tpope/vim-fugitive'
"路径补全
Plug 'shougo/neocomplete.vim'
"jsx
Plug 'mxw/vim-jsx'
"emmet
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'skywind3000/vim-terminal-help'
Plug 'w0ng/vim-hybrid'

call plug#end()
" ******************************END******************************

" VimPlug快捷键：安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

"NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>v :NERDTreeFind<CR>

"CrtlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"若打开分割窗口，可快速切换窗口
"快捷键提示：Ctrl+w w 切换窗口; Ctrl+w s 水平分割; Ctrl+w v 竖直分割
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"easymotion
" s{char}{char} to move to {char}{char}
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)


"coc配置
let g:coc_global_extensions = ['coc-marketplace','coc-json','coc-vetur','coc-markdown-preview-enhanced','coc-prettier','coc-html','coc-tsserver','coc-css','coc-gitignore','coc-webview']

inoremap <silent><expr> <TAB>
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
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"查找代码报错
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"同个单词代码高亮
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

"取消高亮搜索
nnoremap <C-n> :set nohlsearch<CR>
set background=light
colorscheme solarized
syntax enable       "开启语法高亮功能
