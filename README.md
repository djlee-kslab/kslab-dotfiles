# 한시연 맥 기본설정
> ver. 220804

- [x] 해머스푼으로 키 매핑하기
- [ ] fzf, bat, exa 등 유용한 프로그램 사용법 공유하기
- [ ] zsh 필수 플러그인 공유하기

## Hammerspoon으로 키 매핑하기

레포지토리 .hammerspoon 아래 모든 파일들을 해머스푼을 설치하면 생성되는 ~/.hammerspoon 아래에 옮기면 됩니다.

```bash
# 시작에 앞서, 해머스푼 설치
brew install --cask hammerspoon

# 화면 상단 메뉴바 우측에 망치 아이콘이 생성된 것을 확인하고, 클릭해서 안내하는 프로그램 권한 관련 작업을 완료합니다.

# 해머스푼의 디폴트 설정파일을 제거합니다.
rm ~/.hammerspoon/init.lua

# 한시연-맥-기본설정을 클론합니다.
git clone https://github.com/djlee-kslab/kslab-dotfiles

# 해머스푼 관련 설정을 옮깁니다.
mv ./kslab-dotfiles/.hammerspoon/init.lua ~/.hammerspoon/
mv -f ./kslab-dotfiles/.hammerspoon/module ~/.hammerspoon/
```

설정이 끝난 뒤에 해머스푼 아이콘을 눌러 Console 을 열고 새로고침 버튼을 눌러 설정이 잘 적용되는지 확인해주세요.

### 윈도우 위치 조정 단축키 만들기

![Screen Recording 2022-08-04 at 15 08 49](https://user-images.githubusercontent.com/96708272/182775472-c30029ef-a230-4209-a7fe-6075ad05f835.gif)

위 gif처럼 동작하며, 작업되어 있습니다. 단축키는 아래와 같습니다.

<img width="559" alt="image" src="https://user-images.githubusercontent.com/96708272/182769605-9584a962-6ce3-45d1-9194-0b8641170c37.png">

### 한/영 키 만들기

```bash
# 키매핑 파일을 열고, remapper:remap('ralt', 'f18') 부분을 용도에 맞게 수정합니다.
# - 1. 맥 기본 키보드: 'ralt' -> 'rcmd'
# - 2. 외장 키보드: 'ralt' 그대로
# 우측 cmd 또는 alt 키를 F18이라는 안쓴느 키로 매핑하는 과정입니다.
vim ~/.hammerspoon/init.lua

# 애플로고 > System Preferences > keyboard > Shorcuts > InputSources에서
# - 'Select the previous input source' 를 체크 해제
# - 'Select next source in Input menu' 를 한영키(F18)로 설정합니다.
# 스크린샷 첨부합니다.
```
<img width="680" alt="image" src="https://user-images.githubusercontent.com/96708272/182772661-6d7d0113-197f-4bb7-84bb-c6abff794db2.png">

### Home/End 버튼 살리기

아래와 같이 작업되어 있습니다. 
<img width="834" alt="image" src="https://user-images.githubusercontent.com/96708272/182779590-12d12428-3029-4cc8-966a-e601af0a91f0.png">


