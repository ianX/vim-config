"let mapleader="," "命令前缀
let g:vimrc_iswindows=0

" vundle
set nocompatible
filetype off  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles
Bundle 'tpope/vim-fugitive'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'L9'
Bundle 'AutoComplPop'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'jlanzarotta/bufexplorer'
" for snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

filetype on  " after Bundle init
filetype plugin on
filetype indent on " required
syntax on
set background=dark

set cindent
set autoindent
set smartindent     "智能缩进
set wrap
set number
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch        " Highlight search results
set autowrite		" Automatically save before commands like :next and :make
set autoread        " Set to auto read when a file is changed from the outside
set nobackup "make no backup files
set nowb
set noswapfile
set fileformats=unix,dos,mac "support all three ,in this order
set hidden "you can change buffers without saving
set iskeyword+=_,$,@,%,#   "none of these are word dividers
set wildmenu "turn on command lines completetion wild stype
set shortmess=aOstT "shortens messages to avoid 'press a key' prompt
"set whichwrap+=<,>,h,l "退格和方向键可以换行
set scrolloff=3     "光标移动到buffer顶部或底部时保持3行距离
set backspace=indent,eol,start "退格键和del键可以删除回车
"if(has("mouse"))
"    set mouse=n " 普通模式下允许使用鼠标
"endif
set lazyredraw
set autochdir
set guioptions= " 不显示滚动条

"选择模式
set keymodel=startsel,stopsel
set selectmode=key,mouse
snoremap <c-c> <c-o>y

"tab为4个字符宽度
set expandtab  "no real tabs please!
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab

set viminfo+=!  "保存全局变量

"一般设定
set magic   "正则表达式(默认)
set noerrorbells "去掉错误提示音
set novisualbell
set vb t_vb=

"语法折叠
set foldenable
set foldmethod=syntax
set foldlevel=100
set foldcolumn=0

set formatoptions+=mM
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1 
set laststatus=2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P

"IMPORTANT: win32 users will need to have 'shellslash' set so that latex
"can be called correctly.
set shellslash

"IMPORTANT 
set grepprg=grep\ -nH\ $*

"打开.tex文件时latex被加载
let g:tex_flavor='latex'

" Key mappings to ease browsing long lines
nnoremap  <Down>      gj
nnoremap  <Up>        gk
"key mappings for quick arithmetic inside Vim
nnoremap <silent> ,ma yypV:!calcu '<C-R>"'<CR>k$
xnoremap <silent> ,ma yo<ESC>pV:!calcu '<C-R>"'<CR>k$
nnoremap <silent> ,mr yyV:!calcu '<C-R>"'<CR>$
xnoremap <silent> ,mr ygvmaomb:r !calcu '<C-R>"'<CR>"ay$dd`bv`a"ap

"用sdcv翻译 cool~~~
"nnoremap <c-\> :!sdcv <c-r>=expand("<cword>")<cr>\|less<cr><cr>

nnoremap sa :%s///gc<left><left><left><left>
nnoremap ,q :q<cr>
nnoremap sq :wall<cr>:qall<cr>
nnoremap ,w :w<cr>
nnoremap <space> @=((foldclosed(line('.'))<0)?'zc':'zo')<cr> 
nnoremap tn :tabnew .<cr>
nnoremap te :tabedit<cr>
nnoremap tc :tabclose<cr>
nnoremap ,1 1gt
nnoremap ,2 2gt
nnoremap ,3 3gt
nnoremap ,4 4gt
nnoremap ,5 5gt
nnoremap ,6 6gt
nnoremap ,7 7gt
nnoremap ,8 8gt
nnoremap ,9 9gt

nnoremap ,gh <C-w>h
nnoremap ,gj <C-w>j
nnoremap ,gk <C-w>k
nnoremap ,gl <C-w>l

"quickfix errorlist
nnoremap ,cn :cnext<cr>
nnoremap ,cp :cprevious<cr>
nnoremap ,cl :clist<cr>
nnoremap ,cw :cw 10<cr>

"location-list
nnoremap ,ln :lnext<cr>
nnoremap ,lp :lprevious<cr>
nnoremap ,ll :llist<cr>
nnoremap ,lw :lw<cr>

"my info
inoreab xdate <c-r>=strftime("%Y/%m/%d")<cr>
inoreab xtime <c-r>=strftime("%H:%M:%S")<cr>
inoreab xname ianX
inoreab xlmail oldyuezi@live.com
inoreab xymail hudongwen123@yeah.net
inoreab xgmail oldyuezi@gmail.com
inoreab xmmail hudongwen@meituan.com
inoreab xqq 1172085766

"code
inoremap #in #include<space>
inoremap #d #define<space>
inoremap #if #ifdef<space>
inoremap #el #else<cr>
inoremap #en #endif
inoremap ,ns using namesapce std;
inoremap ,if if()<CR>{<CR>}<up><up><end><left>
inoremap ,el else<CR>{<CR>}<up>
inoremap ,ei else<space>if()<CR>{<CR>}<up><up><end><left>
inoremap ,fo for()<CR>{<CR>}<up><up><end><left>
inoremap ,wh while()<CR>{<CR>}<up><up><end><left>
inoremap ,do do{<cr>}while();<up><end><cr>
inoremap ,sw switch(){<cr>}<up><end><left><left>
inoremap ,c; case<space>:<left>

inoremap ,, ()<esc>i
inoremap [] []<esc>i
inoremap ,] {}<esc>i
inoremap ,[ {<esc>o}<esc>O
inoremap '' ''<esc>i
inoremap ,' ""<esc>i
inoremap ,. -><c-x><c-o>

"f:文件名补全，l:行补全，d:字典补全，]:tag补全
inoremap ,x] <C-X><C-]>
inoremap ,xn <C-X><C-N>
inoremap ,xk <C-X><C-K>
inoremap ,xt <C-X><C-T>
inoremap ,xi <C-X><C-I>
inoremap ,xv <C-X><C-V>
inoremap ,xu <C-X><C-U>
inoremap ,xs <C-X><C-S>
inoremap ,xf <C-X><C-F>
inoremap ,xd <C-X><C-D>
inoremap ,xl <C-X><C-L>
inoremap ,p <C-X><C-O>

"全选+复制
nnoremap ,ca ggVGY
inoremap ,ca <esc>ggVGY

"粘贴
inoremap <c-v> <c-r>"

"plugins
"tags
"set tags+=/usr/include/x86_64-linux-gnu/tags
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    "add sys database
    "cs add /usr/include/x86_64-linux-gnu/cscope.out
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
"map for cscope
nnoremap ,ls :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap ,lg :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap ,lc :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap ,lt :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap ,le :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap ,lf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap ,li :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nnoremap ,ld :cs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-F12> :call Do_CsTag()<CR>
nnoremap ,laa :call Load_Systags_All()<cr>
nnoremap ,lax :call Load_Systags_CXX()<cr>
nnoremap ,lac :call Load_Systags_C()<cr>:call Load_Systags_GCC()<cr>
function! Do_CsTag()
    if filereadable("cscope.out")
        silent! execute "!rm cscope.out"
    endif
    if filereadable("ctags")
        silent! execute "!rm ctags"
    endif
    if filereadable("cscope.files")
        silent! execute "!rm cscope.files"
    endif
    if filereadable("filenametags")
        silent! execute("!rm filenametags")
    endif
    silent! execute "!filenametags"
    if(executable('ctags'))
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        silent! execute "!filenames"
        silent! execute "!cscope -bPk"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction

function! Load_Systags_All()
    if exists("g:loaded_systags_all")
      finish
    endif
    let g:loaded_systags_all = 1
    cs add /usr/include/cscope_all.out
    set tags+=/usr/include/tags_all
endfunction

function! Load_Systags_C()
    if exists("g:loaded_systags_c")
      finish
    endif
    let g:loaded_systags_c = 1
    cs add /usr/include/cscope.out
    set tags+=/usr/include/tags
endfunction

function! Load_Systags_CXX()
    if exists("g:loaded_systags_cxx")
      finish
    endif
    let g:loaded_systags_cxx = 1
    cs add /usr/include/c++/4.6/cscope.out
    set tags+=/usr/include/c++/4.6/tags
endfunction

function! Load_Systags_GCC()
    if exists("g:loaded_systags_gcc")
      finish
    endif
    let g:loaded_systags_gcc = 1
    cs add /usr/lib/gcc/x86_64-linux-gnu/4.6/include/cscope.out
    cs add /usr/lib/gcc/x86_64-linux-gnu/4.6/include-fixed/cscope.out
    set tags+=/usr/lib/gcc/x86_64-linux-gnu/4.6/include/tags
    set tags+=/usr/lib/gcc/x86_64-linux-gnu/4.6/include-fixed/tags
endfunction

"taglist
nnoremap ,t :TlistToggle<cr>
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=0
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Auto_Close=1
let Tlist_Process_File_Always=1 "实时更新tags
let Tlist_Inc_Winwidth=0

"winmanager
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'
nnoremap wm :WMToggle<cr>

"supertab
let g:SuperTabDefaultCompletionType = '<C-X><C-U>' 

"OmniCppComplete.vim
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1 
let OmniCpp_ShowAccess=1 

"netrw
let g:netrw_banner= 0
let g:netrw_keepdir= 0
let g:netrw_liststyle=3
let g:netrw_ctags="ctags"

"bufExplorer
let g:bufExplorerShowDirectories=1   " Show directories.
let g:bufExplorerSplitBelow=1        " Split new window below current.
let g:bufExplorerFindActive=1        " Go to active window.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.

nnoremap ,in : Dox<cr>
let g:DoxygenToolkit_authorName="ianX"
let g:DoxygenToolkit_licenseTag="My own license\<enter>"
let g:DoxygenToolkit_undocTag="DOXIGEN_SKIP_BLOCK"
let g:DoxygenToolkit_briefTag_pre = "@brief\t"
let g:DoxygenToolkit_paramTag_pre = "@param\t"
let g:DoxygenToolkit_returnTag = "@return\t"
let g:DoxygenToolkit_briefTag_funcName = "no"
let g:DoxygenToolkit_maxFunctionProtoLines = 30

""""""""""""""""""""""""""""""
"c, c++ 按<C-F1>编译运行
""""""""""""""""""""""""""""""
nnoremap <C-F1> :call CompileRun()<cr>
function! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "! ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!java %<"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunction

""""""""""""""""""""""""""""""
"c,c++ <C-F2>调试
""""""""""""""""""""""""""""""
nnoremap <C-F2> :call Rungdb()<cr>
function! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunction

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
xnoremap <silent> * :call VisualSearch('f')<CR>
xnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
xnoremap <silent> ,v :call VisualSearch('gv')<CR>
nnoremap ,g :vimgrep // **/*.<left><left><left><left><left><left><left>
" Fast grep
" 在当前文件查找光标下的单词
nnoremap <silent> ,lv :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr>     
xnoremap <silent> ,lv :lv /<c-r>=<sid>GetVisualSelection()<cr>/ %<cr>:lw<cr>

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" auto-popup
let g:acp_behaviorSnipmateLength = 1
" for auto-popup and snipmate
function! GetSnipsInCurrentScope()
    let word = matchstr(getline('.'), '\S\+\%'.col('.').'c')
    let list = snipMate#GetSnippetsForWordBelowCursor('', '*',  0)
    let result = {}
    for [trigger, snips] in list
        if len(snips) == 1
            let result[trigger] = values(snips)[0]
        else
            let result[trigger] = items(snips)
        endif
    endfor
    return result
endfunction

" session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

" php-cs-fixer
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                  " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_fixers_list = ""               " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

let g:vimrc_loaded = 1
