scale = 1.2
function onCreate()
makeLuaSprite('bg', 'backgrounds/Mordecaibg/park',0,0)
scaleObject('bg', scale, scale, true)
addLuaSprite('bg')

makeAnimatedLuaSprite('bg2', 'backgrounds/Mordecaibg/GlitchCart',780,735)
addAnimationByPrefix('bg2', 'idle', 'GlitchOnCart',24,true)
scaleObject('bg2', scale, scale, true)
addLuaSprite('bg2')


makeAnimatedLuaSprite('bg3', 'backgrounds/Mordecaibg/glitchy',-45,1150)
addAnimationByPrefix('bg3', 'idle', 'puddle',24,true)
scaleObject('bg3', scale, scale, true)
addLuaSprite('bg3')
close(true)
end