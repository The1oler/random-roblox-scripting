function colorInterpolate(sequencevalue,pointedat)
	local colorTable = sequencevalue.Keypoints
	for i,v in ipairs(colorTable) do
		local currentpoint = v
		local nxtpoint = colorTable[i+1]
		local currentcolor = currentpoint.Value
		local currenttime = currentpoint.Time
		if nxtpoint == nil then return currentcolor end
		local nxtcolor = nxtpoint.Value
		local nxttime = nxtpoint.Time
		if pointedat >= currenttime and pointedat < nxttime then
			local distance = math.abs(nxttime - currenttime)
			local normalized = (pointedat-currenttime) * 1/distance
			local lerped = currentcolor:lerp(nxtcolor,normalized)
			return lerped
		end
	end
end

-- Example code for demonstration
--[[
do
	local par = Instance.new("Part",workspace)
	par.Anchored = true
	par.CFrame = CFrame.new(0,50,0)
	local pemitter = Instance.new("ParticleEmitter",par)
	pemitter.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0,Color3.fromRGB(127,0,255));
	ColorSequenceKeypoint.new(0.4,Color3.fromRGB(0,255,0));
	ColorSequenceKeypoint.new(1,Color3.fromRGB(255,127,127));
	})
	
	wait(2)
	
	for i=0, 100 do
		par.Color = colorInterpolate(pemitter.Color,i/100)
		wait(0.05)
	end
end
]]
