""""""""""""""""""""缩进""""""""""""""""""""""""""""
set tabstop=4       " Tab键替换的空格长度，默认8
set softtabstop=4   " 退格键退回缩进空格的长度
set shiftwidth=4    " 在文本上按下 >>（增加一级缩进）、<<（取消一级缩进）或者 ==（取消全部缩进）时，每一级的字符数。
set expandtab       " 按下 tab 键时自动转为空格
set autoindent      " 自动缩进，按下回车键后，下一行会自动跟上一行的缩进保持一致
set smartindent     " 依据上面的格式，智能的选择对齐方式，对于类似C语言编写很有用处
set copyindent      " 复制粘贴时保留原有的缩进
filetype plugin indent on  " 同时 开启 filetype on 和 filetype plugin on 和 filetype indent on 开启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py 文件，Vim 就是会找 Python 的缩进规则 ~/.vim/indent/python.vim。

" 文件缩进及tab个数
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

" C风格缩进
set cindent
set completeopt=longest,menu


"""""""""""""""""搜索"""""""""""""""""""""""""""""""""
set incsearch       " 查询时实时跳转
"set hlsearch       " 搜索时，高亮显示匹配结果。
set ignorecase      " 搜索时忽略大小写。
set smartcase       " 如果同时打开了 ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索 Test 时，将不匹配 test；搜索 test 时，将匹配 Test。

"""""""""""""""""""显示"""""""""""""""""""""""""
set ruler           " 在状态栏显示光标当前位置，哪一行哪一列
set showmode        " 命令行显示vim当前模式
set showmatch       " 遇到括号（小括号，中括号，大括号）时，自动高亮匹配的括号
set showcmd         " 命令模式下，显示输入的命令
"set nu             " 显示行号
syntax on           " 打开语法高亮。自动识别代码，使用多种颜色显示

"set relativenumber  "显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
"set cursorline     " 光标所在的当前行高亮。
"set cursorcolumn   " 突出显示当前列
set textwidth=80     " 设置行宽，即一行显示多少个字符。
"set wrap            " 自动折行，即太长的行分成几行显示。
"set linebreak      " 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
"set wrapmargin=2   " 指定折行处与编辑窗口的右边缘之间空出的字符数。
"set sidescrolloff=15   " 水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。
"set scrolloff=5   " 垂直滚动时，光标距离顶部 / 底部的位置（单位：行）。
"set laststatus=2   "是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   状态行显示的内容

"colorscheme desert  " 配色方案
"set t_Co=256  " 指定配色方案是256色

"设置光标样式为竖线vertical bar
" Change cursor shape between insert and normal mode in iTerm2.app
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode

""""""""""""""""""""""""""编辑""""""""""""""""""""""""""""""""""""''
set wildmenu                         " 在命令模式下，按下 tab 键可以自动补全命令
set wildmode=longest,list,full       " 上同
set nocp                  "使用vim而非vi"
set backspace=indent,eol,start       " Insert 模式下，使退格键可以删掉任何东西  
"set spell spelllang=en_us       "打开英语单词的拼写检查。
"set nobackup            "不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）。

set undofile       "保留撤销历史。打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~ 开头。

"set noswapfile        "不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp。

"设置备份文件、交换文件、操作历史文件的保存位置。结尾的 // 表示生成的文件名带有绝对路径，路径中用 % 替换目录分隔符，这样可以防止文件重名。
"set backupdir=~/.vim/.backup//  
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo// 
"set autochdir   " 该配置可以将工作目录自动切换到，正在编辑的文件的目录。

set undolevels=1000     " 撤销的次数
set history=1000      " Vim 需要记住多少次历史操作。
set autoread         " 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autowrite        " 自动保存

"set listchars=tab:»■,trail:■           "如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set list                   " 上同
set listchars=tab:>>,trail:.              " 将 tab 键和多余的空格显示出来

set mouse=a  " 支持使用鼠标

set clipboard+=unnamed    " 共享剪贴板


""""""""""""""""""""""""""""
au BufReadPost *                                          " 重新打开文件时，跳到上次的位置
\ if line("'\"") > 1 && line("'\"") <= line("$") |        " 上同
\ exe "normal! g'\"" |                                    " 上同
\ endif                                                   " 上同

""""""""""""""""""编码""""""""""""""""""""""""""""
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
