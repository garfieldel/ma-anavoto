dir = 'backgrounds/jenny/'
function onCreate()
makeLuaSprite('bg', dir..'bg')
scaleObject('bg', 2.2,2.2)
addLuaSprite('bg')

makeAnimatedLuaSprite('HM', dir..'HM',180,100)
addAnimationByPrefix('HM', 'idle', 'bgM',24,true)
addLuaSprite('HM')

makeAnimatedLuaSprite('HR', dir..'HR',180,100)
addAnimationByPrefix('HR', 'idle', 'bgR',24,true)
addLuaSprite('HR')

makeAnimatedLuaSprite('LeavesL', dir..'LeavesL',180,0)
addAnimationByPrefix('LeavesL', 'idle', 'left_leaves',24,true)
addLuaSprite('LeavesL')

makeAnimatedLuaSprite('LeavesR', dir..'LeavesR',150,150)
addAnimationByPrefix('LeavesR', 'idle', 'right_leaves',24,true)
addLuaSprite('LeavesR')

makeAnimatedLuaSprite('skinsuit', dir..'skinsuit',220,370)
addAnimationByPrefix('skinsuit', 'idle', 'skinsuit',24,true)
addLuaSprite('skinsuit')

makeLuaSprite('HL', dir..'HL',180,98)
addLuaSprite('HL')

makeAnimatedLuaSprite('tiger', dir..'tiger',650,450)
addAnimationByPrefix('tiger', 'idle', 'tiger',24,true)
addLuaSprite('tiger')

makeAnimatedLuaSprite('krakus', dir..'krakus',500,600)
addAnimationByPrefix('krakus', 'idle', 'krakus',24,true)
setProperty('krakus.flipX',true)
addLuaSprite('krakus')

makeAnimatedLuaSprite('Glen', dir..'Glen',410,540)
addAnimationByPrefix('Glen', 'idle', 'glen',24,true)
addLuaSprite('Glen')

makeAnimatedLuaSprite('Tiff', dir..'Tiff',300,800)
addAnimationByPrefix('Tiff', 'idle', 'Tiff',24,true)
addLuaSprite('Tiff')

makeAnimatedLuaSprite('Brit', dir..'Brit',480,750)
addAnimationByPrefix('Brit', 'idle', 'Brit',24,true)
addLuaSprite('Brit')

makeAnimatedLuaSprite('killgore', dir..'killgore',2300,1050)
addAnimationByPrefix('killgore', 'idle', 'killgore',20,true)
addLuaSprite('killgore')

makeAnimatedLuaSprite('smytus', dir..'smytus',1700,500)
addAnimationByPrefix('smytus', 'idle', 'smytus',24,true)
addLuaSprite('smytus')

makeAnimatedLuaSprite('idfk', dir..'idfk',2200,700)
addAnimationByPrefix('idfk', 'idle', 'idfk',24,true)
addLuaSprite('idfk')
end


function rgbToHex(array)
return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end

function onCreatePost()
    setHealthBarColors('000000',rgbToHex(getProperty('boyfriend.healthColorArray')))

    if songName == 'Malware' then
        setProperty('idfk.visible',false)
        setProperty('smytus.visible',false)
        setProperty('Glen.visible',false)
        setProperty('krakus.visible',false)
        setProperty('tiger.visible',false)
        setProperty('skinsuit.visible',false)
    end
end