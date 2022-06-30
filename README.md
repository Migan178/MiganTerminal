# MirTerminal

<img width="568" alt="Screenshot 2022-06-30 at 5 52 17 PM" src="https://user-images.githubusercontent.com/72956792/176635975-c729eb04-23dd-4c03-9e08-3d6e05a07839.png">

## 간단한 zsh 테마

### zsh

Linux
debian : `sudo apt install zsh`

red hat : `sudo dnf install zsh`

MacOS
Brew : `brew install zsh`

### oh my zsh

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Install Theme

`git clone https://github.com/ImNyang/MirTerminal.git`
클론 후 안에 있는 readme.md를 제외한 파일을 `~.oh-my-zsh/themes`에 넣는다.

그후 `~./zshrc`파일을 수정한다.
`ZSH_THEME="mirterminal"`

그리고 터미널을 종료후 다시 실행한다

+ 윈도우는 사용법 자체가 달라서 추후에 공지 혹은 wsl 사용 (코드에 마지막 줄 `cd /mnt/c/Users/사용자이름/` 이렇게 해도 일반 cmd같이 사용 가능)
