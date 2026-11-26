local _1,_2,_3,_4,_5,_6=3.8,"20","500","10",false,false
local _7,_8,_9=game:GetService("Players").LocalPlayer,game:GetService("Workspace"),nil
local _10,_13={}, {"DFInt","","FInt","FFlag"}
for _11,_12 in pairs({TargetTimeDelayFacctorTenths=_2,InterpolationMaxDelayMsec=_3,MaxFrameBufferSize=_4}) do _10[_11]=_12 for _i=1,#_13 do local _14,_15=pcall(getfflag,_13[_i].._11) if _14 and _15~=nil and tostring(_15)~="" then _10[_11]=tostring(_15) break end end end
local _16=Instance.new("ScreenGui") _16.Name="DangerousHack" _16.ResetOnSpawn=false _16.Parent=_7:WaitForChild("PlayerGui")
local _17=Instance.new("TextButton") _17.Size=UDim2.new(0,44,0,24) _17.Position=UDim2.new(0,12,0.5,-12) _17.BackgroundColor3=Color3.fromRGB(16,16,18) _17.BorderColor3=Color3.fromRGB(58,58,64) _17.BorderSizePixel=1 _17.TextColor3=Color3.fromRGB(220,220,225) _17.Font=Enum.Font.Code _17.TextSize=12 _17.Text="Pred" _17.Parent=_16
local _18=Instance.new("Frame") _18.Size=UDim2.new(0,272,0,176) _18.Position=UDim2.new(0.5,-136,0.5,-88) _18.BackgroundColor3=Color3.fromRGB(15,15,17) _18.BorderColor3=Color3.fromRGB(52,52,58) _18.BorderSizePixel=1 _18.Visible=false _18.Active=true _18.Draggable=true _18.Parent=_16
local _19=Instance.new("Frame") _19.Size=UDim2.new(1,0,0,22) _19.BackgroundColor3=Color3.fromRGB(22,22,26) _19.BorderColor3=Color3.fromRGB(45,45,52) _19.BorderSizePixel=1 _19.Parent=_18
local _20=Instance.new("TextLabel") _20.Size=UDim2.new(1,-34,1,0) _20.Position=UDim2.new(0,8,0,0) _20.BackgroundTransparency=1 _20.TextColor3=Color3.fromRGB(215,215,220) _20.Font=Enum.Font.Code _20.TextSize=12 _20.TextXAlignment=Enum.TextXAlignment.Left _20.TextTruncate=Enum.TextTruncate.AtEnd _20.Text="DangerousHack // Teach Randoms Lessons" _20.Parent=_19
local _67=Instance.new("ImageButton") _67.Size=UDim2.new(0,18,0,18) _67.Position=UDim2.new(1,-20,0,2) _67.BackgroundColor3=Color3.fromRGB(28,28,34) _67.BorderColor3=Color3.fromRGB(58,58,64) _67.BorderSizePixel=1 _67.Image="rbxassetid://7059346386" _67.ImageColor3=Color3.fromRGB(220,220,225) _67.Parent=_19
local _69=Instance.new("Frame") _69.Size=UDim2.new(0,220,0,84) _69.Position=UDim2.new(0.5,144,0.5,-42) _69.BackgroundColor3=Color3.fromRGB(15,15,17) _69.BorderColor3=Color3.fromRGB(52,52,58) _69.BorderSizePixel=1 _69.Visible=false _69.Active=true _69.Draggable=true _69.Parent=_16
local _70=Instance.new("TextLabel") _70.Size=UDim2.new(1,-16,0,24) _70.Position=UDim2.new(0,8,0,8) _70.BackgroundTransparency=1 _70.TextColor3=Color3.fromRGB(215,215,220) _70.Font=Enum.Font.Code _70.TextSize=11 _70.TextXAlignment=Enum.TextXAlignment.Left _70.TextTruncate=Enum.TextTruncate.AtEnd _70.Text='set keybind for “fuck antony”' _70.Parent=_69
local _71=Instance.new("TextButton") _71.Size=UDim2.new(1,-16,0,26) _71.Position=UDim2.new(0,8,0,40) _71.BackgroundColor3=Color3.fromRGB(24,24,28) _71.BorderColor3=Color3.fromRGB(55,55,62) _71.BorderSizePixel=1 _71.TextColor3=Color3.fromRGB(210,210,215) _71.Font=Enum.Font.Code _71.TextSize=11 _71.Text="None" _71.Parent=_69
local _21=Instance.new("TextButton") _21.Size=UDim2.new(0,122,0,24) _21.Position=UDim2.new(0,10,0,30) _21.BackgroundColor3=Color3.fromRGB(24,24,28) _21.BorderColor3=Color3.fromRGB(55,55,62) _21.BorderSizePixel=1 _21.TextColor3=Color3.fromRGB(210,210,215) _21.Font=Enum.Font.Code _21.TextSize=10 _21.TextTruncate=Enum.TextTruncate.AtEnd _21.Text="fuck people form moon" _21.Parent=_18
local _22=Instance.new("TextButton") _22.Size=UDim2.new(0,122,0,24) _22.Position=UDim2.new(0,140,0,30) _22.BackgroundColor3=Color3.fromRGB(24,24,28) _22.BorderColor3=Color3.fromRGB(55,55,62) _22.BorderSizePixel=1 _22.TextColor3=Color3.fromRGB(210,210,215) _22.Font=Enum.Font.Code _22.TextSize=11 _22.TextTruncate=Enum.TextTruncate.AtEnd _22.Text="fuck antony: Off" _22.Parent=_18
local _43,_44,_45,_46,_47=game,game:GetService("Teams"),game:GetService("RunService"),_7.UserId,Vector3.new(4000000,1225,4000000)
local _48,_49=CFrame.new(-0.239999995,15.1899996,-157.800003,-1,0,0,0,1,0,0,0,-1),CFrame.new(-0.239999995,15.1899996,161.5,-1,0,0,0,1,0,0,0,-1)
local _58,_59,_62,_63=_8.TPSSystem,_8.FE.System.Kick,Vector3.zero,{}
local _64,_65=_44.Blue,_44.Red
local _57,_68=nil,false
local _72,_73,_74=game:GetService("UserInputService"),nil,false
local function _66(_52)
	_57=nil _63[1]=nil _63[2]=nil
	if not _52 then return end
	local function _c(_o)
		local _nm=_o.Name
		if _nm=="HumanoidRootPart" then _57=_o
		elseif _nm=="Right Leg" then _63[1]=_o
		elseif _nm=="Left Leg" then _63[2]=_o end
	end
	local _ch=_52:GetChildren()
	for _i=1,#_ch do _c(_ch[_i]) end
	_52.ChildAdded:Connect(_c)
	_52.ChildRemoved:Connect(function(_o)
		if _o==_57 then _57=nil
		elseif _o==_63[1] then _63[1]=nil
		elseif _o==_63[2] then _63[2]=nil end
	end)
end
_66(_7.Character)
_7.CharacterAdded:Connect(_66)
_7.CharacterRemoving:Connect(function() _57=nil _63[1]=nil _63[2]=nil end)
local function _23(_24) local _25=_24==true for _11,_12 in pairs({TargetTimeDelayFacctorTenths=_2,InterpolationMaxDelayMsec=_3,MaxFrameBufferSize=_4}) do local _26=_25 and tostring(_12) or tostring(_10[_11]) for _i=1,#_13 do pcall(setfflag,_13[_i].._11,_26) end end end
local function _27(_28,_29,_30,_31) local _32=Instance.new("TextLabel") _32.Size=UDim2.new(0,174,0,20) _32.Position=UDim2.new(0,10,0,_28) _32.BackgroundColor3=Color3.fromRGB(19,19,22) _32.BorderColor3=Color3.fromRGB(40,40,46) _32.BorderSizePixel=1 _32.TextColor3=Color3.fromRGB(185,185,192) _32.Font=Enum.Font.Code _32.TextSize=11 _32.TextXAlignment=Enum.TextXAlignment.Left _32.TextTruncate=Enum.TextTruncate.AtEnd _32.Text=" ".._29 _32.Parent=_18 local _33=Instance.new("TextBox") _33.Size=UDim2.new(0,72,0,20) _33.Position=UDim2.new(0,190,0,_28) _33.BackgroundColor3=Color3.fromRGB(10,10,12) _33.BorderColor3=Color3.fromRGB(55,55,62) _33.BorderSizePixel=1 _33.TextColor3=Color3.fromRGB(230,230,235) _33.Font=Enum.Font.Code _33.TextSize=11 _33.Text=tostring(_30) _33.ClearTextOnFocus=false _33.Parent=_18 _33.FocusLost:Connect(function() local _34=tostring(_33.Text) if _34=="" then _33.Text=tostring(_30) return end _30=_31(_34,_30) _33.Text=tostring(_30) end) end
_27(62,"dick size",_1,function(_35,_36) local _37=tonumber(_35) if _37 then _1=_37 return _37 end return _36 end)
_27(88,"TargetTime value = instant fuck",_2,function(_35) _2=_35 if _5 then _23(true) end return _2 end)
_27(114,"Intropolationmaxfuckms",_3,function(_35) _3=_35 if _5 then _23(true) end return _3 end)
_27(140,"MaxFuckBufferSpeed",_4,function(_35) _4=_35 if _5 then _23(true) end return _4 end)
local function _38()
	while _6 do
		local _53,_40=_58.TPS,_57
		if _40 and _53 then
			if not _9 then _9={a=_53.AssemblyLinearVelocity,b=_53.AssemblyAngularVelocity,c=_40.AssemblyLinearVelocity,d=_40.AssemblyAngularVelocity} end
			_53.AssemblyLinearVelocity=_62 _53.AssemblyAngularVelocity=_62 _40.AssemblyLinearVelocity=_62 _40.AssemblyAngularVelocity=_62
			local _41=nil
			local _60,_61=_64:GetPlayers(),_65:GetPlayers()
			if table.find(_60,_7) then _41=_48
			elseif table.find(_61,_7) then _41=_49 end
			if _41 then local _54=_41.Position _40.CFrame=CFrame.lookAt(_53.Position,Vector3.new(_54.X,_54.Y-2.5,_54.Z)) else _40.CFrame=_53.CFrame end
			for _42=1,10 do if not _6 then break end _59:FireServer(_46,_53,70,_47,false,true,0,"Rock'n'roll Star","NeverFearTruth","power=95/100") end
		end
		_45.Heartbeat:Wait()
	end
	if _9 then
		local _53,_40=_58.TPS,_57
		if _53 then _53.AssemblyLinearVelocity=_9.a _53.AssemblyAngularVelocity=_9.b end
		if _40 then _40.AssemblyLinearVelocity=_9.c _40.AssemblyAngularVelocity=_9.d end
		_9=nil
	end
end
local function _75()
	_6=_6 _22.Text=_6 and "fuck antony: On" or "fuck antony: Off" _22.BorderColor3=_6 and Color3.fromRGB(70,180,105) or Color3.fromRGB(55,55,62)
	if _6 then task.spawn(_38) end
end
_17.MouseButton1Click:Connect(function() _18.Visible=not _18.Visible end)
_67.MouseButton1Click:Connect(function() _68=not _68 _69.Visible=_68 _67.BorderColor3=_68 and Color3.fromRGB(70,180,105) or Color3.fromRGB(58,58,64) end)
_71.MouseButton1Click:Connect(function() _74=true _71.Text="..." end)
_72.InputBegan:Connect(function(_ip,_gp)
	if _74 then
		_74=false
		if _ip.KeyCode==Enum.KeyCode.Escape then _73=nil _71.Text="None"
		elseif _ip.KeyCode~=Enum.KeyCode.Unknown then _73=_ip.KeyCode _71.Text=_ip.KeyCode.Name end
		return
	end
	if not _gp and _73 and _ip.KeyCode==_73 then _6=not _6 _75() end
end)
_21.MouseButton1Click:Connect(function() _5=not _5 _21.Text=_5 and "no fuck people from moon" or "fuck people form moon" _21.BorderColor3=_5 and Color3.fromRGB(70,180,105) or Color3.fromRGB(55,55,62) _23(_5) end)
_22.MouseButton1Click:Connect(function() _6=not _6 _75() end)
task.spawn(function() while task.wait(15) do if _5 then _23(true) end end end)
_45.Stepped:Connect(function()
	if _5 and _43:IsLoaded() then
		local _53=_58.TPS
		if _57 and _53 and (_57.Position-_53.Position).Magnitude<=_1 then
			for _i=1,2 do local _56=_63[_i] if _56 then firetouchinterest(_56,_53,0) firetouchinterest(_56,_53,1) end end
		end
	end
end)
