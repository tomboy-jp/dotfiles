" =================
"     init.vim
" =================

set encoding=utf-8 "エンコ設定"
set termencoding=utf-8 "ターミナルでのエンコ設定"
set fenc=utf-8 "文字コードの指定"
set sh=bash "shはbashとして解釈"
set noswapfile "ファイル編集中にスワップファイルを作らない"
set number "桁表示"
set ruler "カーソルが何行目の何列目に置かれているかを表示"
set backspace=indent,eol,start
set mouse=a   "マウス有効"
set clipboard=unnamed "clipbordと対応"
set laststatus=2 "ステータスラインの表示"
set cmdheight=2 "メッセージ欄の表示"
set cursorline "カーソルラインの表示"
set cursorcolumn "カーソルカラムの表示"
set title "ターミナルのタイトルを表示"
set display=lastline "長い行もきちんと表示"
set showmatch "括弧のネストを可視化"
set list "スペースの可視化"
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:% "space 対応"
set expandtab "タブ入力を複数の空白入力に置き換える"
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する"
set autoindent "改行時に前の行のインデントを継続する"
set tabstop=4 "タブ幅
set softtabstop=4 "タブ幅(入力時)
set shiftwidth=4 "タブ幅(読み込み時)
set termguicolors "色を綺麗にする"

colorscheme monokai

let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"} "DeopleteでESCをmappingする

inoremap <silent> jj <ESC>
"jjをESC割り当て"
nnoremap Y y$ "Yをy$と解釈"
nnoremap <C-a> ^
nnoremap <C-e> $
nnoremap <C-h> b
nnoremap <C-l> w
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>
