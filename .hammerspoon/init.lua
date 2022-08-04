-- init
-- @djlee@kslab.co.kr, 220804

-- 윈도우 위치를 제어하는 모듈
local module_windowControl = require('module.window_control')

-- 키를 매핑하는 모듈
local module_keyRemapping = require('module.foundation_remapping')
local remapper = module_keyRemapping.new()
remapper:remap('ralt', 'f18')
remapper:register()

-- Home/End 키를 윈도우처럼 변경
local module_restoreHomeAndEndKey = require('module.restore_home_and_end_key')
