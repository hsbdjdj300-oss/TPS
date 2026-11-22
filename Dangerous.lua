local _1, _2, _3, _4, _6 = 3.8, "20", "500", "10", false
local _7, _8 = game:GetService("Players").LocalPlayer, game:GetService("Workspace")
local _88 = {}
for _15, _16 in pairs({TargetTimeDelayFacctorTenths=_2, InterpolationMaxDelayMsec=_3, MaxFrameBufferSize=_4}) do
	_88[_15] = _16
	for _, _17 in ipairs({"DFInt","","FInt","FFlag"}) do
		local _89, _90 = pcall(getfflag, _17.._15)
		if _89 and _90 ~= nil and tostring(_90) ~= "" then _88[_15] = tostring(_90) break end
	end
end
local _10 = Instance.new("ScreenGui", _7:WaitForChild("PlayerGui")) _10.ResetOnSpawn = false
local _11 = Instance.new("TextButton", _10) _11.Size, _11.Position, _11.Text, _11.Active, _11.Draggable = UDim2.new(0,36,0,36), UDim2.new(0,20,0,200), "UI", true, true
local _12 = Instance.new("Frame", _10) _12.AnchorPoint, _12.Size, _12.Position, _12.BackgroundColor3, _12.BorderSizePixel, _12.Active, _12.Draggable, _12.Visible = Vector2.new(.5,.5), UDim2.new(0,260,0,136), UDim2.new(.5,0,.5,0), Color3.fromRGB(30,30,30), 0, true, true, false
local _13 = Instance.new("TextButton", _12) _13.Size, _13.Position, _13.Text, _13.BackgroundColor3, _13.TextColor3, _13.BorderSizePixel = UDim2.new(1,-8,0,22), UDim2.new(0,4,0,4), "Off", Color3.fromRGB(110,45,45), Color3.new(1,1,1), 0
local function _14(_86)
	local _87 = _86 == true
	for _15, _16 in pairs({TargetTimeDelayFacctorTenths=_2, InterpolationMaxDelayMsec=_3, MaxFrameBufferSize=_4}) do
		local _91 = _87 and tostring(_16) or tostring(_88[_15])
		for _, _17 in ipairs({"DFInt","","FInt","FFlag"}) do pcall(setfflag, _17.._15, _91) end
	end
end
local function _18(_19, _20, _21, _22)
	local _23, _24 = Instance.new("TextLabel", _12), Instance.new("TextBox", _12)
	_23.Size, _23.Position, _23.BackgroundTransparency, _23.Text, _23.TextColor3, _23.TextXAlignment, _23.TextScaled = UDim2.new(0,186,0,20), UDim2.new(0,4,0,_19), 1, _20, Color3.new(1,1,1), Enum.TextXAlignment.Left, true
	_24.Size, _24.Position, _24.Text, _24.BackgroundColor3, _24.TextColor3, _24.BorderSizePixel, _24.ClearTextOnFocus, _24.TextSize = UDim2.new(0,62,0,20), UDim2.new(0,194,0,_19), tostring(_21), Color3.fromRGB(45,45,45), Color3.new(1,1,1), 0, false, 11
	_24.FocusLost:Connect(function()
		local _92 = tostring(_24.Text)
		if _92 == "" then _24.Text = tostring(_21) return end
		_21 = _22(_92, _21)
		_24.Text = tostring(_21)
	end)
end
_18(30, "Reach", _1, function(_25, _93) local _94 = tonumber(_25) if _94 then _1 = _94 return _94 end return _93 end)
_18(54, "TargetTimeDelayFacctorTenths", _2, function(_25) _2 = _25 if _6 then _14(true) end return _2 end)
_18(78, "InterpolationMaxDelayMsec", _3, function(_25) _3 = _25 if _6 then _14(true) end return _3 end)
_18(102, "MaxFrameBufferSize", _4, function(_25) _4 = _25 if _6 then _14(true) end return _4 end)
_11.MouseButton1Click:Connect(function() _12.Visible = not _12.Visible end)
_13.MouseButton1Click:Connect(function() _6 = not _6 _13.Text, _13.BackgroundColor3 = _6 and "On" or "Off", _6 and Color3.fromRGB(45,105,55) or Color3.fromRGB(110,45,45) _14(_6) end)
task.spawn(function() while task.wait(15) do if _6 then _14(true) end end end)
game.RunService.Stepped:Connect(function()
	if _6 and game.Players.LocalPlayer.Character and game.Workspace.TPSSystem.TPS and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= _1 then
		for _, v in next, {"Right Leg", "Left Leg"} do firetouchinterest(game.Players.LocalPlayer.Character[v], game.Workspace.TPSSystem.TPS, 0) firetouchinterest(game.Players.LocalPlayer.Character[v], game.Workspace.TPSSystem.TPS, 1) end
	end
end)
