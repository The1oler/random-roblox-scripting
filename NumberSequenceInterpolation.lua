
function NumberInterpolate(sequencevalue,pointedat)
	local function lerp(a, b, t)
  	  return a * (1-t) + (b*t)
	end
	local numberTable = sequencevalue.Keypoints
	for i,v in ipairs(numberTable) do
		local currentpoint = v
		local nxtpoint = numberTable[i+1]
		local currentvalu = currentpoint.Value
		local currenttime = currentpoint.Time
		if nxtpoint == nil then return currentvalu end
		local nxtvalu = nxtpoint.Value
		local nxttime = nxtpoint.Time
		if pointedat >= currenttime and pointedat < nxttime then
			local distance = math.abs(nxttime - currenttime)
			local normalized = (pointedat-currenttime) * 1/distance
			local lerped = lerp(currentvalu,nxtvalu,normalized)
			return lerped
		end
	end
end

-- Example code for demonstration
--[[
local sequn = NumberSequence.new({
	NumberSequenceKeypoint.new(0,1);
	NumberSequenceKeypoint.new(0.75,0.5);
	NumberSequenceKeypoint.new(1,1);
})


print(NumberInterpolate(sequn,0.4))
]]

