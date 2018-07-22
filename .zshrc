# 環境変数
export LANG=ja_JP.UTF-8
export KCODE=u
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$PATH:${HOME}/.bin"

# 色を使用出来るようにする
autoload -Uz colors
colors

# 予測入力をできるようにする
autoload -Uz compinit
compinit -u

# タブ補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# ( ^ω^)つPROMPT
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '[%F{green}%b%f]'
zstyle ':vcs_info:*' actionformats '[%F{green}%b%f(%F{red}%a%f)]'
precmd() { vcs_info }
PROMPT='
[%n@%m]${vcs_info_msg_0_}%{${fg[magenta]}%}%/%{${reset_color}%}
%(?.%B%F{cyan}.%B%F{red})%(?!( ^ω^)つ !(;^ω^%)つ )%f%b'
RPROMPT=''

# vcsの表示
zstyle ':vcs_info:*' enable git svn hg bzr
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "+"
zstyle ':vcs_info:*' unstagedstr "*"
zstyle ':vcs_info:*' formats '(%b%c%u)'
zstyle ':vcs_info:*' actionformats '(%b(%a)%c%u)'

# Aliasの設定
alias ls='gls --color=auto'
alias l='ls'
alias ll='ls -lF'
alias rm='rm -i'
alias hc='rm -f ~/.zsh_history && exec -l $SHELL'
alias gs='git status'
alias gl='git log --graph'
alias ql='qlmanage -p "$@" >& /dev/null'
alias jn='/Users/tomboy/.pyenv/versions/anaconda3-5.0.1/bin/jupyter_mac.command ;'
alias v='nvim'


# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zhistory
# メモリに保存される履歴の件数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# historyを共有
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand
# 履歴をインクリメンタルに追加
setopt inc_append_history
# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward
