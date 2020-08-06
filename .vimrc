set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number " show line number
set hlsearch " hight light search
set autoindent " auto indent
set cindent
set ruler
set cursorline
set scrolloff=10
set foldenable
set foldmethod=manual
set completeopt=preview,menu
set confirm
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
"inoremap <C-a> <Esc>:NERDTree<CR><CR>
"inoremap <C-a> <Esc>:w<CR><CR>
"for fugitive{
let g:gitgutter_diff_args = '-w'
"}
" Source a global configuration file if available
set nocompatible               " be iMproved
filetype off                   " required!
"{for .diff file type
if &diff
" 新增的行 "
highlight DiffAdd ctermbg=235  ctermfg=108  guibg=#262626 guifg=#87af87 cterm=reverse gui=reverse
" 删除的行 "
highlight DiffDelete ctermbg=235  ctermfg=131  guibg=#262626 guifg=#af5f5f cterm=reverse gui=reverse
" 差异的行 "
highlight DiffChange ctermbg=235  ctermfg=103  guibg=#262626 guifg=#8787af cterm=reverse gui=reverse
" 差异的文字 "
highlight DiffText ctermbg=235  ctermfg=208  guibg=#262626 guifg=#ff8700 cterm=reverse gui=reverse
endif
"}
"bundle{
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

	" let Vundle manage Vundle
	" required!
	Bundle 'gmarik/vundle'
    	Plugin 'Vundle.vim'

	" My Bundles here:
	"
	" original repos on github
    Plugin 'git://github.com/bling/vim-airline'
	Bundle 'tpope/vim-fugitive'
	Bundle 'Lokaltog/vim-easymotion'
	Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
	Bundle 'tpope/vim-rails.git'
	" vim-scripts repos
	Bundle 'L9'
	Bundle 'FuzzyFinder'
	Bundle 'scrooloose/syntastic'
	Bundle 'scrooloose/nerdtree'
    	"Bundle 'Valloric/YouCompleteMe'
	Plugin 'Lokaltog/vim-powerline'
	" non github repos
	Bundle 'git://git.wincent.com/command-t.git'
	Bundle 'git://github.com/majutsushi/tagbar'
	Bundle 'ctrlpvim/ctrlp.vim'
	"Bundle 'rking/ag.vim'
	Bundle 'powerline/fonts'
	Bundle 'vim-scripts/c.vim'
	Bundle 'portante/cscope'
	"Bundle 'w0rp/ale'
	Bundle 'junegunn/gv.vim'
	Bundle 'vcscommand.vim'
	Bundle 'ShowTrailingWhitespace'
    	"Bundle 'iamcco/mathjax-support-for-mkdp'
    	Bundle 'davidhalter/jedi-vim'
    	Bundle 'Yggdroot/indentLine'
    	Bundle 'mhinz/vim-startify'
    	"Bundle 'zxqfl/tabnine-vim'
    	"Plugin 'sillybun/autoformatpythonstatement'
    	"Bundle 'iamcco/markdown-preview.vim'
	" ...

	filetype plugin indent on     " required!
	"
	" Brief help  -- 此处后面都是vundle的使用命令
	" :BundleList          - list configured bundles
	" :BundleInstall(!)    - install(update) bundles
	" :BundleSearch(!) foo - search(or refresh cache first) for foo
	" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
	"
	" see :h vundle for more details or wiki for FAQ
	" NOTE: comments after Bundle command are not allowed..
"}
"YCM{
" 自动补全配置
"set completeopt=longest,menu
" "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" "离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" "回车即选中当前项
" "上下左右键的行为 会显示其他信息
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :
 "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" :
" "\<PageUp>"
"
" "youcompleteme  默认tab  s-tab 和自动补全冲突
" "let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_select_completion = ['<Down>']
" "let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_previous_completion = ['<Up>']
" let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
"
"let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2 "
" 从第2个键入字符就开始罗列匹配项
"let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
"let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with
" syntastic
" "nnoremap <leader>lo :lopen<CR> "open locationlist
" "nnoremap <leader>lc :lclose<CR>    "close locationlist
" inoremap <leader><leader> <C-x><C-o>
"
" "在注释输入中也能补全
"let g:ycm_complete_in_comments = 1
" "在字符串输入中也能补全
"let g:ycm_complete_in_strings = 1
" "注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0
"
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> "
" 跳转到定义处
"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"}


"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'
"}
"ag{
"if executable('ag')
"	set grepprg=ag\ --nogroup\ --nocolor
"	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   let g:ctrlp_use_caching = 0
"endif
"}

"ctrlp {
    let g:ctrlp_cache_dir = $HOME . '~/.cache/ctrlp'
	let g:ctrlp_max_height = 50
	let g:ctrlp_max_depth = 50
	let g:ctrlp_max_files = ''
	let g:ctrlp_custom_ignore = {
	    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
	    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|o|py|txt|sh|out|md|apk|bat|rom|xml|file|gradle|rar|a)$',
	    \ }
	let g:ctrlp_mruf_max = 500
	let g:ctrlp_match_window_reversed = 0
    let g:ctrlp_working_path_mode = ''
"}
"tagbar{
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=40
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"}
"c.vim{
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'
"}
"cscope{
"cscope add /home/lichuan/code/Supernova/cscope.out /home/lichuan/code/Supernova/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
   set csprg=/usr/bin/cscope
   set csto=1
   set cst
   set nocsverb
   set cscopequickfix=s-,c-,d-,i-,t-,e-
   " add any database in current directory
   if filereadable("cscope.out")
     cs add cscope.out
   endif
   set csverb
   nmap <C-n> :cnext<CR>
   nmap <C-y> :cprev<CR>
   nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
   nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
   nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
   nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
   nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
   nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
   nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
   nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif


"}
"ale{
let g:ale_emit_conflict_warnings = 0
"}
" for python{
filetype plugin on
" 按 F5 执行当前 Python 代码"
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w"
    if &filetype == 'python'
        exec "!python %"
    endif
endfunc
let g:jedi#completions_command = "<C-N>"
"let g:indentLine_color_term = 11
filetype plugin on
if &filetype != 'py'
    let g:indentLine_setColors = 0
    let g:indentLine_enabled = 0
endif
"} end of python
"{
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fb :FufBuffer<CR>
"}
nnoremap <F2> :NERDTreeToggle<CR>
nmap <silent>gb :Gblame <CR>
