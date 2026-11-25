local _1,_2,_3,_4,_5,_6=3.8,"20","500","10",false,false
local _7,_8,_9=game:GetService("Players").LocalPlayer,game:GetService("Workspace"),nil
local _10={}
for _11,_12 in pairs({TargetTimeDelayFacctorTenths=_2,InterpolationMaxDelayMsec=_3,MaxFrameBufferSize=_4}) do _10[_11]=_12 for _,_13 in ipairs({"DFInt","","FInt","FFlag"}) do local _14,_15=pcall(getfflag,_13.._11) if _14 and _15~=nil and tostring(_15)~="" then _10[_11]=tostring(_15) break end end end
local _16=Instance.new("ScreenGui") _16.Name="DangerousHack" _16.ResetOnSpawn=false _16.Parent=_7:WaitForChild("PlayerGui")
local _17=Instance.new("TextButton") _17.Size=UDim2.new(0,44,0,24) _17.Position=UDim2.new(0,12,0.5,-12) _17.BackgroundColor3=Color3.fromRGB(16,16,18) _17.BorderColor3=Color3.fromRGB(58,58,64) _17.BorderSizePixel=1 _17.TextColor3=Color3.fromRGB(220,220,225) _17.Font=Enum.Font.Code _17.TextSize=12 _17.Text="PS" _17.Parent=_16
local _18=Instance.new("Frame") _18.Size=UDim2.new(0,272,0,176) _18.Position=UDim2.new(0.5,-136,0.5,-88) _18.BackgroundColor3=Color3.fromRGB(15,15,17) _18.BorderColor3=Color3.fromRGB(52,52,58) _18.BorderSizePixel=1 _18.Visible=false _18.Active=true _18.Draggable=true _18.Parent=_16
local _19=Instance.new("Frame") _19.Size=UDim2.new(1,0,0,22) _19.BackgroundColor3=Color3.fromRGB(22,22,26) _19.BorderColor3=Color3.fromRGB(45,45,52) _19.BorderSizePixel=1 _19.Parent=_18
local _20=Instance.new("TextLabel") _20.Size=UDim2.new(1,-10,1,0) _20.Position=UDim2.new(0,8,0,0) _20.BackgroundTransparency=1 _20.TextColor3=Color3.fromRGB(215,215,220) _20.Font=Enum.Font.Code _20.TextSize=12 _20.TextXAlignment=Enum.TextXAlignment.Left _20.Text="Diddysauce // DangerousHack" _20.Parent=_19
local _21=Instance.new("TextButton") _21.Size=UDim2.new(0,122,0,24) _21.Position=UDim2.new(0,10,0,30) _21.BackgroundColor3=Color3.fromRGB(24,24,28) _21.BorderColor3=Color3.fromRGB(55,55,62) _21.BorderSizePixel=1 _21.TextColor3=Color3.fromRGB(210,210,215) _21.Font=Enum.Font.Code _21.TextSize=10 _21.TextTruncate=Enum.TextTruncate.AtEnd _21.Text="fuck people form moon" _21.Parent=_18
local _22=Instance.new("TextButton") _22.Size=UDim2.new(0,122,0,24) _22.Position=UDim2.new(0,140,0,30) _22.BackgroundColor3=Color3.fromRGB(24,24,28) _22.BorderColor3=Color3.fromRGB(55,55,62) _22.BorderSizePixel=1 _22.TextColor3=Color3.fromRGB(210,210,215) _22.Font=Enum.Font.Code _22.TextSize=11 _22.Text="the big guns: Off" _22.Parent=_18
local function _23(_24) local _25=_24==true for _11,_12 in pairs({TargetTimeDelayFacctorTenths=_2,InterpolationMaxDelayMsec=_3,MaxFrameBufferSize=_4}) do local _26=_25 and tostring(_12) or tostring(_10[_11]) for _,_13 in ipairs({"DFInt","","FInt","FFlag"}) do pcall(setfflag,_13.._11,_26) end end end
local function _27(_28,_29,_30,_31) local _32=Instance.new("TextLabel") _32.Size=UDim2.new(0,174,0,20) _32.Position=UDim2.new(0,10,0,_28) _32.BackgroundColor3=Color3.fromRGB(19,19,22) _32.BorderColor3=Color3.fromRGB(40,40,46) _32.BorderSizePixel=1 _32.TextColor3=Color3.fromRGB(185,185,192) _32.Font=Enum.Font.Code _32.TextSize=11 _32.TextXAlignment=Enum.TextXAlignment.Left _32.TextTruncate=Enum.TextTruncate.AtEnd _32.Text=" ".._29 _32.Parent=_18 local _33=Instance.new("TextBox") _33.Size=UDim2.new(0,72,0,20) _33.Position=UDim2.new(0,190,0,_28) _33.BackgroundColor3=Color3.fromRGB(10,10,12) _33.BorderColor3=Color3.fromRGB(55,55,62) _33.BorderSizePixel=1 _33.TextColor3=Color3.fromRGB(230,230,235) _33.Font=Enum.Font.Code _33.TextSize=11 _33.Text=tostring(_30) _33.ClearTextOnFocus=false _33.Parent=_18 _33.FocusLost:Connect(function() _30=_31(tostring(_33.Text),_30) _33.Text=tostring(_30) end) end
_27(62,"Reach",_1,function(_34,_35) return tonumber(_34) or _35 end)
_27(88,"Targettimeon=instantly fuck",_2,function(_34) _2=_34 _23(true) return _2 end)
_27(114,"InterpolationMaxDelayMsec",_3,function(_34) _3=_34 _23(true) return _3 end)
_27(140,"MaxFrameBufferSize",_4,function(_34) _4=_34 _23(true) return _4 end)
local function _36()
	while _6 do
		local _37,_38=_8.TPSSystem.TPS,_7.Character.HumanoidRootPart
		_9=_9 or {a=_37.AssemblyLinearVelocity,b=_37.AssemblyAngularVelocity,c=_38.AssemblyLinearVelocity,d=_38.AssemblyAngularVelocity}
		_37.AssemblyLinearVelocity,_37.AssemblyAngularVelocity,_38.AssemblyLinearVelocity,_38.AssemblyAngularVelocity=Vector3.zero,Vector3.zero,Vector3.zero,Vector3.zero
		local _39=game:GetService("Teams").Blue and table.find(game:GetService("Teams").Blue:GetPlayers(),_7) and CFrame.new(-0.239999995,15.1899996,-157.800003,-1,0,0,0,1,0,0,0,-1) or (game:GetService("Teams").Red and table.find(game:GetService("Teams").Red:GetPlayers(),_7) and CFrame.new(-0.239999995,15.1899996,161.5,-1,0,0,0,1,0,0,0,-1) or nil)
		if _39 then local _40=_39.Position _38.CFrame=CFrame.lookAt(_37.Position,Vector3.new(_40.X,_40.Y-2.5,_40.Z)) else _38.CFrame=_37.CFrame end
		for _41=1,10 do _37.AssemblyLinearVelocity,_37.AssemblyAngularVelocity=Vector3.zero,Vector3.zero _8.FE.System.Kick:FireServer(_7.UserId,_37,70,Vector3.new(4000000,1225,4000000),false,true,0,"Rock'n'roll Star","NeverFearTruth","power=95/100") end
		game:GetService("RunService").Heartbeat:Wait()
	end
	if _9 then
		_8.TPSSystem.TPS.AssemblyLinearVelocity,_8.TPSSystem.TPS.AssemblyAngularVelocity=_9.a,_9.b
		_7.Character.HumanoidRootPart.AssemblyLinearVelocity,_7.Character.HumanoidRootPart.AssemblyAngularVelocity=_9.c,_9.d
		_9=nil
	end
end
local function _42()
	while _5 do
		if (_7.Character.HumanoidRootPart.Position-_8.TPSSystem.TPS.Position).Magnitude<=_1 then
			for _,_43 in next,{"Right Leg","Left Leg"} do firetouchinterest(_7.Character[_43],_8.TPSSystem.TPS,0) firetouchinterest(_7.Character[_43],_8.TPSSystem.TPS,1) end
		end
		game:GetService("RunService").Stepped:Wait()
	end
end
_17.MouseButton1Click:Connect(function() _18.Visible=not _18.Visible end)
_21.MouseButton1Click:Connect(function() _5=not _5 _21.Text=_5 and "no fuck people from moon" or "fuck people form moon" _21.BorderColor3=_5 and Color3.fromRGB(70,180,105) or Color3.fromRGB(55,55,62) _23(_5) if _5 then task.spawn(_42) end end)
_22.MouseButton1Click:Connect(function() _6=not _6 _22.Text=_6 and "the big guns: On" or "the big guns: Off" _22.BorderColor3=_6 and Color3.fromRGB(70,180,105) or Color3.fromRGB(55,55,62) if _6 then task.spawn(_36) end end)
task.spawn(function() while task.wait(15) do if _5 then _23(true) end end end)
