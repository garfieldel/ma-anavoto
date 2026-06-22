function onCreate()
-- background shit
makeLuaSprite('stageback', 'stageback', -600, -300)
setScrollFactor('stageback', 0.9, 0.9)

makeLuaSprite('stagefront', 'stagefront', -650, 600)
setScrollFactor('stagefront', 0.9, 0.9)
scaleObject('stagefront', 1.1, 1.1)

makeLuaSprite('stagelight_left', 'stage_light', -125, -100)
setScrollFactor('stagelight_left', 0.9, 0.9)
scaleObject('stagelight_left', 1.1, 1.1)

makeLuaSprite('stagelight_right', 'stage_light', 1225, -100)
setScrollFactor('stagelight_right', 0.9, 0.9)
scaleObject('stagelight_right', 1.1, 1.1)
setProperty('stagelight_right.flipX', true) --mirror sprite horizontally

makeLuaSprite('stagecurtains', 'stagecurtains', -305, -300)
setScrollFactor('stagecurtains', 1.3, 1.3)
scaleObject('stagecurtains', 0.9, 0.9)

addLuaSprite('stageback')
addLuaSprite('stagefront')
addLuaSprite('stagelight_left')
addLuaSprite('stagelight_right')
addLuaSprite('stagecurtains')


------------pibby corrupted stuff--------------
dir = 'backgrounds/bfbg/'
makeAnimatedLuaSprite('bottomFloor', dir..'bottomFloor', -230, 500);
addAnimationByPrefix('bottomFloor','Idle', 'Idle', 20, true);
addAnimationByPrefix('bottomFloor','Spreading', 'Spreading', 20, true);
scaleObject('bottomFloor', 1.3, 1.3);
addLuaSprite('bottomFloor')

makeAnimatedLuaSprite('leftCorner', dir..'leftCorner', 0, 100);
addAnimationByPrefix('leftCorner','Idle', 'Idle', 20, true);
addAnimationByPrefix('leftCorner','Spreading', 'Spreading', 20, true);
scaleObject('leftCorner', 1.2, 1.2);
setScrollFactor('leftCorner', 0.9, 0.9);
addLuaSprite('leftCorner')


makeAnimatedLuaSprite('rightCorner', dir..'rightCorner', 800, 100);
addAnimationByPrefix('rightCorner','Idle', 'Idle', 20, true);
addAnimationByPrefix('rightCorner','Spreading', 'Spreading', 20, true);
scaleObject('rightCorner', 1.3, 1.3);
setScrollFactor('rightCorner', 0.9, 0.9);
addLuaSprite('rightCorner')

makeLuaSprite('Light', dir..'spotlight',50, -200)
setProperty('Light.scale.x', 1.4)
setProperty('Light.antialiasing', true)
setProperty('Light.alpha', 0.375)

setBlendMode('Light', 'add')
setProperty('Light.visible', false)
updateHitbox('Light')
addLuaSprite('Light')

close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end