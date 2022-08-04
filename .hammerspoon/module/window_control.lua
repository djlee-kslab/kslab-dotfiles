-- window_control.lua
-- @djlee@kslab.co.kr, 220804

-- Move windows like OS-Windows
local function move_win(xx, yy, ww, hh)
    return function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local max = win:screen():frame()
        f.x = max.w * xx -- x좌표 위치
        f.y = max.h * yy -- y좌표 위치
        f.w = max.w * ww -- 가로 길이
        f.h = max.h * hh -- 세로 길이
        win:setFrame(f) -- 현재 focusing하고 있는 윈도우에 (x,y) 위치와 가로/세로 길이를 적용
    end
end

-- 윈도우 옮기는 동작을 실행할 단축키 조합 ('⌃'+'⌥'+[ ])
local mod = {'left_control', 'left_option'}

-- 화면 1분할({enter} = {전체화면})
hs.hotkey.bind(mod, 'return',	move_win(0, 0, 1, 1))

-- 화면 2분할({up, down, left, righ} = {상, 하, 좌, 우})
hs.hotkey.bind(mod, 'up',	    move_win(0, 0, 1, 1/2))
hs.hotkey.bind(mod, 'down',	    move_win(0, 1/2, 1, 1/2))
hs.hotkey.bind(mod, 'left',	    move_win(0, 0, 1/2, 1))
hs.hotkey.bind(mod, 'right',	move_win(1/2, 0, 1/2, 1))

-- 화면 4분할 ({i, k, j, u} = {1사분면, 2사분면, 3사분면, 4사분면})
hs.hotkey.bind(mod, 'j',	move_win(0, 1/2, 1/2, 1/2))
hs.hotkey.bind(mod, 'k',	move_win(1/2, 1/2, 1/2, 1/2))
hs.hotkey.bind(mod, 'i',	move_win(1/2, 0, 1/2, 1/2))
hs.hotkey.bind(mod, 'u',	move_win(0, 0, 1/2, 1/2))

-- 화면 세로로 3분할 ({d, f g} = {왼쪽 1/3, 가운데 1/3, 오른쪽 1/3})
hs.hotkey.bind(mod, 'd',	move_win(0, 0, 1/3, 1))
hs.hotkey.bind(mod, 'f',	move_win(1/3, 0, 1/3, 1))
hs.hotkey.bind(mod, 'g',	move_win(2/3, 0, 1/3, 1))

-- 화면 세로로 3분할2 ({e, t} = {왼쪽 2/3, 오른쪽 2/3})
hs.hotkey.bind(mod, 'e',	move_win(0, 0, 2/3, 1))
hs.hotkey.bind(mod, 't',	move_win(1/3, 0, 2/3, 1))
