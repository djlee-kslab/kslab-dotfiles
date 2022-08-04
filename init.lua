-- 윈도우 위치를 제어하는 모듈
local module_windowControl = require('module.window_control')

-- 키를 매핑하는 모듈
local module_keyRemapping = require('module.foundation_remapping')
local remapper = module_keyRemapping.new()
remapper:remap('ralt', 'f18')
remapper:register()
