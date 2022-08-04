-- restore_home_and_end_key
-- @djlee@kslab.co.kr, 220804

-- home/end
hs.hotkey.bind({''}, 'home', nil, function() hs.eventtap.keyStroke({'command'}, 'left')end)
hs.hotkey.bind({""}, "end", nil, function() hs.eventtap.keyStroke({"cmd"}, "right") end)

-- home/end + shift
hs.hotkey.bind('shift','home', nil, function() hs.eventtap.keyStroke({'shift','cmd'},'left')end) 
hs.hotkey.bind('shift','end', nil, function() hs.eventtap.keyStroke({'shift','cmd'},'right')end)
