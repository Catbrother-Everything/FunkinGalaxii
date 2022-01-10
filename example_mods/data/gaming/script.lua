function onCreate()
	makeLuaSprite('goop', 'goop', 125, -50);
	setScrollFactor('goop', 0.0, 0.0);
	scaleObject('goop', 0.8, 0.8);
	addLuaSprite('goop', true);

	if isStoryMode then
		makeAnimatedLuaSprite('cutscene', 'virginity_assets', -113, -70);
		setScrollFactor('cutscene', 0.0, 0.0);
		addAnimationByPrefix('cutscene','bop','fnafstatic',24,true)
		scaleObject('cutscene', 1.2, 1.2);
		doTweenAlpha('1','cutscene',0,0.0001,'linear')
	end
end

function onUpdate(elapsed)
	if curStep == 985 then
		addLuaSprite('cutscene',true)
		doTweenAlpha('1','cutscene',1,5,'linear')
		setObjectCamera('cutscene','camOther')
	end
end