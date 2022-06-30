# MirTerminal

<img width="645" alt="Screenshot 2022-07-01 at 7 36 13 AM" src="https://user-images.githubusercontent.com/72956792/176789986-70f6e47d-af39-4aa7-85cb-f535a6ce9ab3.png">

https://discord.gg/5vHhFVDuCK

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

`git clone https://github.com/NyangLab/MirTerminal.git`
클론 후 안에 있는 readme.md를 제외한 파일을 `~/.oh-my-zsh/themes`에 넣는다.

그후 `~/.zshrc`파일을 수정한다.
`ZSH_THEME="mirterminal"`

그리고 터미널을 종료후 다시 실행한다

+ 윈도우는 사용법 자체가 달라서 추후에 공지 혹은 wsl 사용 (`~/.zshrc`파일에서 마지막줄에 `cd /mnt/c/Users/사용자이름/` 이렇게 해도 일반 cmd같이 사용 가능)
