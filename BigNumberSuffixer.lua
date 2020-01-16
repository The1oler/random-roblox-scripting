local bigNumberCalculation = {
	'k';
	'M';
	'B';
	'T';
	'qd';
	'Qn';
	'sx';
	'Sp';
	'O';
	'N';
	'De';
	'uD'	;
	'dD';
	'TD';
	'qdD';
	'QnD';
	'sxD';
	'SpD';
	'OD';
	'nvD';
	'VgnT';
	'uVgnT';
	'dVgnT';
	'TVgnT';
	'qdVgnT';
	'QnVgnT';
	'sxVgnT';
	'SpVgnT';
	'OVgnT';
	'nvVgnT';
	'TTG';
	'uTTG';
	'dTTG';
	'TsTTG';
	'qdTTG';
	'QnTTG';
	'sxTTG';
	'SpTTG';
	'OTTG';
	'nvTTG';
	'qdT';
	'uqdT';
	'dqdT';
	'TqdT';
	'qdqdT';
	'QnqdT';
	'sxqdT';
	'SpqdT';
	'OqdT';
	'nvqdT';
	'QnqdgnT';
	'uQnqdgnT';
	'dQnqdgnT';
	'TQnqdgnT';
	'qdQnqdgnT';
	'QnQnqdgnT';
	'sxQnqdgnT';
	'SpQnqdgnT';
	'OQnqdgnT';
	'nvQnqdgnT'; 
	'sxagT';
	'usxagT';
	'dsxagT';
	'TsxagT';
	'qdsxagT';
	'QnsxagT';
	'sxsxagT';
	'SpsxagT';
	'OsxagT';
	'nvsxagT';
	'SpagT';
	'uSpagT';
	'dSpagT';
	'TSpagT';
	'qdSpagT';
	'QnSpagT';
	'sxSpagT';
	'SpSpagT';
	'OSpagT';
	'nvSpagT';
	'OtgT';
	'uOtgT';
	'dOtgT';
	'TOtgT';
	'qdOtgT';
	'QnOtgT';
	'sxOtgT';
	'SpOtgT';
	'OcOtgT';
	'nvOtgT';
	'NagT';
	'uNagT';
	'dNagT';
	'TNagT';
	'qdNagT';
	'QnNagT';
	'sxNagT';
	'SpNagT';
	'OcNagT';
	'nvNagT';
	'Ce';
	'uCe'; -- ~169uCe is the max threshold that Roblox can handle
}

local bigNumberCalculationFull =
{
	'Thousand';
	'Million';
	'Billion';
	'Trillion';
	'Quadrillion';
	'Quintillion';
	'Sextillion';
	'Septillion';
	'Octillion';
	'Nonillion';
	'Decillion';
	'Undecillion';
	'Duodecillion';
	'Tredecillion';
	'Quatturodecillion';
	'Quinquadecillion';
	'Sedecillion';
	'Septendecillion';
	'Octodecillion';
	'Novendecillion';
	'Vigintillion';
	'Unvigintillion';
	'Duovigintillion';
	'Tresvigintillion';
	'Quatturovigintillion';
	'Quinquavigintillion';
	'Sesvigintillion';
	'Septemvigintillion';
	'Octovigintillion';
	'Novemvigintillion';
	'Trigintillion';
	'Untrigintillion';
	'Duotrigintillion';
	'Trestigintillion';
	'Quattuortrigintillion';
	'Quinquatrigintillion';
	'Sestrigintillion';
	'Septentrigintillion';
	'Octotrigintillion';
	'Noventrigintillion';
	'Quadragintillion';
	'Unquadragintillion';
	'Duoquadragintillion';
	'Tresquadragintillion';
	'Quattuorquadragintillion';
	'Quinquaquadragintillion';
	'Sesquadragintillion';
	'Septenquadragintillion';
	'Octoquadragintillion';
	'Novenquadragintillion';
	'Quinquagintillion';
	'Unquinquagintillion';
	'Duoquinquagintillion';
	'Tresquinquagintillion';
	'Quattuorquinquagintillion';
	'Quinquaquinquagintillion';
	'Sesquinquagintillion';
	'Septenquinquagintillion';
	'Octoquinquagintillion';
	'Novenquinquagintillion'; 
	'Sexagintillion';
	'Unsexagintillion';
	'Duosexagintillion';
	'Tressexagintillion';
	'Quattuorsexagintillion';
	'Quinquasexagintillion';
	'Sesexagintillion';
	'Septensexagintillion';
	'Octosexagintillion';
	'Novemsexagintillion';
	'Septuagintillion';
	'Unseptuagintillion';
	'Duoseptuagintillion';
	'Treseptuagintillion';
	'Quattuorseptuagintillion';
	'Quinquaseptuagintillion';
	'Seseptuagintillion';
	'Septenseptuagintillion';
	'Octoseptuagintillion';
	'Novenseptuagintillion';
	'Octogintillion';
	'Unoctogintillion';
	'Duoctogintillion';
	'Tresoctogintillion';
	'Quattuoroctogintillion';
	'Quinquaoctogintillion';
	'Sexoctogintillion';
	'Septemoctogintillion';
	'Octoctogintillion';
	'Novemoctogintillion';
	'Nonagintillion';
	'Unonagintillion';
	'Duononagintillion';
	'Trenonagintillion';
	'Quattuornonagintillion';
	'Quinquanonagintillion';
	'Senonagintillion';
	'Septenonagintillion';
	'Octononagintillion';
	'Novenonagintillion';
	'Centillion';
	'Uncentillion'; -- ~169uCe is the max threshold that Roblox can handle
}

function LocalGetAmountInLongNum(temp,divisionratio,fullnamenabled)
	
	local divisionamt = 1
	
	if tonumber(divisionratio) then
		divisionamt = divisionratio
	end	
	
	local length = 1
	
	local resultstri = math.floor(temp)
	local negativemode = false
	if temp < 0 then
		negativemode = true
		temp = -temp
	end
	
	local multiplier = 10^1
	local exceeded = false
	temp = temp + temp*0.000000001
	if temp < math.huge then
		repeat
			if temp > multiplier then
				multiplier = multiplier * 10
				length = length + 1
			else
				exceeded = true 
			end
		until exceeded
	else
		length = math.huge
	end
	
	local modval = (length-1)%3
	local offset = math.floor(length/3)
	if modval == 2 then
		offset = math.floor((length-0.01)/3)
	end
	if temp > 1000 then
		if offset ~= 0 then
			if temp < math.huge then
				if bigNumberCalculation[offset] ~= nil then
					if fullnamenabled == false or fullnamenabled == nil then
						if modval == 0 then
							resultstri = math.floor(temp/10^(offset*3)*(100 * divisionamt))/(100 * divisionamt) .. bigNumberCalculation[offset]
						elseif modval == 1 then
							resultstri = math.floor(temp/10^(offset*3)*(10 * divisionamt))/(10 * divisionamt) .. bigNumberCalculation[offset]
						elseif modval == 2 then
							resultstri = math.floor(temp/10^(offset*3)*(1 * divisionamt))/(1 * divisionamt) .. bigNumberCalculation[offset]
						end
					else
						if modval == 0 then
							resultstri = math.floor(temp/10^(offset*3)*(100 * divisionamt))/(100 * divisionamt) .. ' '.. bigNumberCalculationFull[offset]
						elseif modval == 1 then
							resultstri = math.floor(temp/10^(offset*3)*(10 * divisionamt))/(10 * divisionamt) .. ' ' .. bigNumberCalculationFull[offset]
						elseif modval == 2 then
							resultstri = math.floor(temp/10^(offset*3)*(1 * divisionamt))/(1 * divisionamt) .. ' ' .. bigNumberCalculationFull[offset]
						end
					end
				end
			else
				resultstri = 'Limitless'
			end
		end
	else
		resultstri = math.floor(temp)
	end
	if negativemode then
		resultstri = '-' .. resultstri
	end
	return resultstri
end
