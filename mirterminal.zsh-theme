# ASCII ART
echo "   _____  .__        _______                                \n  /     \ |__|______ \      \ ___.__._____    ____    ____  \n /  \ /  \|  \_  __ \/   |   <   |  |\__  \  /    \  / ___\ \n/    Y    \  ||  | \/    |    \___  | / __ \|   |  \/ /_/  >\n\____|__  /__||__|  \____|__  / ____|(____  /___|  /\___  / \n        \/                  \/\/          \/     \//_____/  "

# 인사 + 사용자 명 + 버전
echo "\033[0;32mHi! \033[0m`whoami`" && echo "\033[0mThis is \033[0;35mMirTerminal v1.0.\033[0m\n"

#운영체제 정보
echo "\033[1;33mKernel Info : `uname -mrs`"
echo "\033[1;34mOS Info : `case "$OSTYPE" in
  solaris*) echo "Solaris" ;;
  darwin*)  echo "MacOS" ;; 
  linux*)   echo "Linux" ;;
  bsd*)     echo "BSD" ;;
  *)        echo "Error OS Type = $OSTYPE" ;;
esac`"
echo "CPU : `sysctl -n machdep.cpu.brand_string`"
echo "Mem : `hwprefs memory_size`"
echo "Host IP : `ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`"

#공지
echo "\033[1;31mAll Update in https://github.com/ImNyang/MirTerminal\nPls check every day it"

#터미널 코드

if [ "x$OH_MY_ZSH_HG" = "x" ]; then
    OH_MY_ZSH_HG="hg"
fi

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function hg_prompt_info {
    $OH_MY_ZSH_HG prompt --angle-brackets "\
< on %{$fg[magenta]%}<branch>%{$reset_color%}>\
< at %{$fg[yellow]%}<tags|%{$reset_color%}, %{$fg[yellow]%}>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}<
patches: <patches|join( → )|pre_applied(%{$fg[yellow]%})|post_applied(%{$reset_color%})|pre_unapplied(%{$fg_bold[black]%})|post_unapplied(%{$reset_color%})>>" 2>/dev/null
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

PROMPT='
%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[cyan]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/🏠}%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
$(virtualenv_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )[MirTerminal] %% '

ZSH_THEME_GIT_PROMPT_PREFIX=" on \033[0;31m%{%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'

#Credit ImNyang
#Thanks OhMyZsh
#MirNyang Theme