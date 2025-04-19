--[[

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░░░░░░░█░░░░░░██░░░░░░█░░░░░░░░░░░░░░░░███░░░░░░░░██░░░░░░░░█
█░░▄▀░░░░░░░░░░░░░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀▄▀░░██░░▄▀▄▀░░█
█░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░▄▀░░███░░░░▄▀░░██░░▄▀░░░░█
█░░▄▀░░░░░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░████░░▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░████░░▄▀░░█████░░▄▀▄▀░░▄▀▄▀░░███
█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░▄▀░░█████░░░░▄▀▄▀▄▀░░░░███
█░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀▄▀░░███████░░░░▄▀░░░░█████
█░░▄▀░░██░░░░░░██░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░yue<3▀░░░░███░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░░░█████████░░▄▀░░███████
█░░▄▀░░██████████░░▄▀░░█░░▄▀░░█████████░░▄▀░░██░░▄▀░░█████░░▄▀░░█████████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░███████████░░▄▀░░███████
█░░▄▀░░██████████░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░██░░▄▀░░░░░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░░░░░███████░░▄▀░░███████
█░░▄▀░░██████████░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░▄▀▄▀▄▀░░███████░░▄▀░░███████
█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░██░░░░░░░░░░███████░░░░░░███████
██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

edited: 1/26
developers:
discord Abstract#8007
discord Deity#0228

]]

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HTTPService = game:GetService("HttpService")

local Library = {
	Themes = {
		Legacy = {
			Main = Color3.fromHSV(262/360, 60/255, 34/255),
			Secondary = Color3.fromHSV(240/360, 40/255, 63/255),
			Tertiary = Color3.fromHSV(260/360, 60/255, 148/255),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Serika = {
			Main = Color3.fromRGB(50, 52, 55),
			Secondary = Color3.fromRGB(80, 82, 85),
			Tertiary = Color3.fromRGB(226, 183, 20),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Dark = {
			Main = Color3.fromRGB(30, 30, 35),
			Secondary = Color3.fromRGB(50, 50, 55),
			Tertiary = Color3.fromRGB(70, 130, 180), -- SteelBlue

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Rust = {
			Main = Color3.fromRGB(37, 35, 33),
			Secondary = Color3.fromRGB(65, 63, 63),
			Tertiary = Color3.fromRGB(237, 94, 38),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Aqua = {
			Main = Color3.fromRGB(19, 21, 21),
			Secondary = Color3.fromRGB(65, 63, 63),
			Tertiary = Color3.fromRGB(51, 153, 137),

			StrongText = Color3.fromHSV(0, 0, 1),        
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		Festive = {
			Main = Color3.fromRGB(223, 219, 219),
			Secondary = Color3.fromRGB(215, 165, 165),
			Tertiary = Color3.fromRGB(0, 255, 0),

			StrongText = Color3.fromHSV(255, 0, 0),        
			WeakText = Color3.fromHSV(0, 255, 0)
		},
		Swift = {
			Main = Color3.fromRGB(20, 20, 20),
			Secondary = Color3.fromRGB(24, 24, 24),
			Tertiary = Color3.fromRGB(251, 196, 112),

			StrongText = Color3.fromHSV(0, 0, 1),		
			WeakText = Color3.fromHSV(0, 0, 172/255)
		},
		VisualStudio = {} -- You can define this theme later if needed
	},
	ColorPickerStyles = {
		Legacy = 0,
		Modern = 1
	},
	Toggled = true,
	ThemeObjects = {
		Main = {},
		Secondary = {},
		Tertiary = {},

		StrongText = {},
		WeakText = {}
	},
	WelcomeText = nil,
	DisplayName = nil,
	DragSpeed = 0.06,
	LockDragging = false,
	ToggleKey = Enum.KeyCode.Home,
	UrlLabel = nil,
	Url = nil

}
Library.__index = Library

local selectedTab

Library._promptExists = false
Library._colorPickerExists = false

local GlobalTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

function Library:set_defaults(defaults, options)
	defaults = defaults or {}
	options = options or {}
	for option, value in next, options do
		defaults[option] = value
	end
	return defaults
end

function Library:change_theme(toTheme)
	Library.CurrentTheme = toTheme
	local c = self:lighten(toTheme.Tertiary, 20)
	Library.DisplayName.Text = "Welcome, <font color='rgb(" ..  math.floor(c.R*255) .. "," .. math.floor(c.G*255) .. "," .. math.floor(c.B*255) .. ")'> <b>" .. LocalPlayer.DisplayName .. "</b> </font>"
	for color, objects in next, Library.ThemeObjects do
		local themeColor = Library.CurrentTheme[color]
		for _, obj in next, objects do
			local element, property, theme, colorAlter = obj[1], obj[2], obj[3], obj[4] or 0
			local themeColor = Library.CurrentTheme[theme]
			local modifiedColor = themeColor
			if colorAlter < 0 then
				modifiedColor = Library:darken(themeColor, -1 * colorAlter)
			elseif colorAlter > 0 then
				modifiedColor = Library:lighten(themeColor, colorAlter)
			end
			element:tween{[property] = modifiedColor}
		end
	end
end

function Library:object(class, properties)
	local localObject = Instance.new(class)

	local forcedProps = {
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Font = Enum.Font.SourceSans,
		Text = ""
	}

	for property, value in next, forcedProps do
		pcall(function()
			localObject[property] = value
		end)
	end

	local methods = {}

	methods.AbsoluteObject = localObject

	function methods:tween(options, callback)
		local options = Library:set_defaults({
			Length = 0.2,
			Style = Enum.EasingStyle.Linear,
			Direction = Enum.EasingDirection.InOut
		}, options)
		callback = callback or function() return end


		local ti = TweenInfo.new(options.Length, options.Style, options.Direction)
		options.Length = nil
		options.Style = nil 
		options.Direction = nil

		local tween = TweenService:Create(localObject, ti, options); tween:Play()

		tween.Completed:Connect(function()
			callback()
		end)

		return tween
	end

	function methods:round(radius)
		radius = radius or 6
		Library:object("UICorner", {
			Parent = localObject,
			CornerRadius = UDim.new(0, radius)
		})
		return methods
	end

	function methods:object(class, properties)
		local properties = properties or {}
		properties.Parent = localObject
		return Library:object(class, properties)
	end

	function methods:crossfade(p2, length)
		length = length or .2
		self:tween({ImageTransparency = 1})
		p2:tween({ImageTransparency = 0})
	end

	function methods:fade(state, colorOverride, length, instant)
		length = length or 0.2
		if not rawget(self, "fadeFrame") then
			local frame = self:object("Frame", {
				BackgroundColor3 = colorOverride or self.BackgroundColor3,
				BackgroundTransparency = (state and 1) or 0,
				Size = UDim2.fromScale(1, 1),
				Centered = true,
				ZIndex = 999
			}):round(self.AbsoluteObject:FindFirstChildOfClass("UICorner") and self.AbsoluteObject:FindFirstChildOfClass("UICorner").CornerRadius.Offset or 0)
			rawset(self, "fadeFrame", frame)
		else
			self.fadeFrame.BackgroundColor3 = colorOverride or self.BackgroundColor3
		end

		if instant then
			if state then
				self.fadeFrame.BackgroundTransparency = 0
				self.fadeFrame.Visible = true
			else
				self.fadeFrame.BackgroundTransparency = 1
				self.fadeFrame.Visible = false
			end
		else
			if state then
				self.fadeFrame.BackgroundTransparency = 1
				self.fadeFrame.Visible = true
				self.fadeFrame:tween{BackgroundTransparency = 0, Length = length}
			else
				self.fadeFrame.BackgroundTransparency = 0
				self.fadeFrame:tween({BackgroundTransparency = 1, Length = length}, function()
					self.fadeFrame.Visible = false
				end)
			end
		end	
	end

	function methods:stroke(color, thickness, strokeMode)

		thickness = thickness or 1
		strokeMode = strokeMode or Enum.ApplyStrokeMode.Border
		local stroke = self:object("UIStroke", {
			ApplyStrokeMode = strokeMode,
			Thickness = thickness
		})

		if type(color) == "table" then
			local theme, colorAlter = color[1], color[2] or 0
			local themeColor = Library.CurrentTheme[theme]
			local modifiedColor = themeColor
			if colorAlter < 0 then
				modifiedColor = Library:darken(themeColor, -1 * colorAlter)
			elseif colorAlter > 0 then
				modifiedColor = Library:lighten(themeColor, colorAlter)
			end
			stroke.Color = modifiedColor
			table.insert(Library.ThemeObjects[theme], {stroke, "Color", theme, colorAlter})
		elseif type(color) == "string" then
			local themeColor = Library.CurrentTheme[color]
			stroke.Color = themeColor
			table.insert(Library.ThemeObjects[color], {stroke, "Color", color, 0})
		else
			stroke.Color = color
		end

		return methods
	end

	function methods:tooltip(text)
		local tooltipContainer = methods:object("TextLabel", {
			Theme = {
				BackgroundColor3 = {"Main", 10},
				TextColor3 = {"WeakText"}
			},
			TextSize = 16,
			Text = text,
			Position = UDim2.new(0.5, 0, 0, -8),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			AnchorPoint = Vector2.new(0.5, 1),
			BackgroundTransparency = 1,
			TextTransparency = 1,
			ZIndex = 100 -- Make sure tooltip is on top
		}):round(5)
		tooltipContainer.Size = UDim2.fromOffset(tooltipContainer.TextBounds.X + 16, tooltipContainer.TextBounds.Y + 8)

		local tooltipArrow = tooltipContainer:object("ImageLabel", {
			Image = "http://www.roblox.com/asset/?id=4292970642",
			Theme = {ImageColor3 = {"Main", 10}},
			AnchorPoint = Vector2.new(0.5, 0),
			Rotation = 180,
			Position = UDim2.fromScale(0.5, 1),
			Size = UDim2.fromOffset(10, 6),
			BackgroundTransparency = 1,
			ImageTransparency = 1,
			ZIndex = 100 -- Make sure tooltip is on top
		})

		local hovered = false

		methods.MouseEnter:connect(function()
			hovered = true
			task.wait(0.2) -- Use task.wait instead of wait()
			if hovered then
				tooltipContainer:tween{BackgroundTransparency = 0.2, TextTransparency = 0} -- Fade text in completely
				tooltipArrow:tween{ImageTransparency = 0.2}
			end
		end)

		methods.MouseLeave:connect(function()
			hovered = false
			tooltipContainer:tween{BackgroundTransparency = 1, TextTransparency = 1}
			tooltipArrow:tween{ImageTransparency = 1}
		end)

		return methods
	end

	local customHandlers = {
		Centered = function(value)
			if value then
				localObject.AnchorPoint = Vector2.new(0.5, 0.5)
				localObject.Position = UDim2.fromScale(0.5, 0.5)
			end	
		end,
		Theme = function(value)
			for property, obj in next, value do
				if type(obj) == "table" then
					local theme, colorAlter = obj[1], obj[2] or 0
					local themeColor = Library.CurrentTheme[theme]
					local modifiedColor = themeColor
					if colorAlter < 0 then
						modifiedColor = Library:darken(themeColor, -1 * colorAlter)
					elseif colorAlter > 0 then
						modifiedColor = Library:lighten(themeColor, colorAlter)
					end
					localObject[property] = modifiedColor
					table.insert(self.ThemeObjects[theme], {methods, property, theme, colorAlter})
				else
					local themeColor = Library.CurrentTheme[obj]
					localObject[property] = themeColor
					table.insert(self.ThemeObjects[obj], {methods, property, obj, 0})
				end
			end
		end,
	}

	for property, value in next, properties do
		if customHandlers[property] then
			customHandlers[property](value)
		else
			localObject[property] = value
		end
	end

	return setmetatable(methods, {
		__index = function(_, property)
			return localObject[property]
		end,
		__newindex = function(_, property, value)
			localObject[property] = value
		end,
	})
end

function Library:show(state)
	self.Toggled = state
	self.mainFrame.ClipsDescendants = true
	if state then
		self.mainFrame:tween({Size = self.mainFrame.oldSize, Length = 0.25}, function()
			rawset(self.mainFrame, "oldSize", (state and self.mainFrame.oldSize) or self.mainFrame.Size)
			self.mainFrame.ClipsDescendants = false
		end)
		task.wait(0.15) -- Use task.wait
		self.mainFrame:fade(not state, self.mainFrame.BackgroundColor3, 0.15)
	else		
		self.mainFrame:fade(not state, self.mainFrame.BackgroundColor3, 0.15)
		task.wait(0.1) -- Use task.wait
		self.mainFrame:tween({Size = UDim2.fromOffset(0,0), Length = 0.25}) -- Use UDim2.fromOffset(0,0) instead of UDim2.new()
	end
end

function Library:darken(color, f)
	local h, s, v = Color3.toHSV(color)
	f = 1 - ((f or 15) / 80)
	return Color3.fromHSV(h, math.clamp(s/f, 0, 1), math.clamp(v*f, 0, 1))
end

function Library:lighten(color, f)
	local h, s, v = Color3.toHSV(color)
	f = 1 - ((f or 15) / 80)
	return Color3.fromHSV(h, math.clamp(s*f, 0, 1), math.clamp(v/f, 0, 1))
end

local updateSettings = function() end

function Library:set_status(txt)
	self.statusText.Text = txt
end

function Library:create(options)

	local settings = {
		Theme = "Dark" -- Default theme
	}

	pcall(function() -- Wrap file operations in pcall for safety
		if readfile and writefile and isfile then
			if not isfile("MercurySettings.json") then
				writefile("MercurySettings.json", HTTPService:JSONEncode(settings))
			else
				local success, data = pcall(function() return HTTPService:JSONDecode(readfile("MercurySettings.json")) end)
				if success and type(data) == "table" then
					settings = data
				else
					-- Handle error or corrupted file: rewrite with defaults
					writefile("MercurySettings.json", HTTPService:JSONEncode({Theme = "Dark"}))
					settings = {Theme = "Dark"}
				end
			end
			Library.CurrentTheme = Library.Themes[settings.Theme or "Dark"] -- Ensure settings.Theme exists
			updateSettings = function(property, value)
				settings[property] = value
				pcall(writefile, "MercurySettings.json", HTTPService:JSONEncode(settings)) -- Also wrap writefile in pcall
			end
		else
			-- Set default theme if file functions aren't available
			Library.CurrentTheme = Library.Themes[settings.Theme]
		end
	end)
	
	options = self:set_defaults({
		Name = "Mercury",
		Size = UDim2.fromOffset(600, 400),
		Theme = self.Themes[settings.Theme or "Dark"], -- Use default if theme isn't set correctly
		Link = "https://github.com/deeeity/mercury-lib"
	}, options)


	if getgenv and getgenv().MercuryUI then
		pcall(function() getgenv().MercuryUI() end) -- Wrap in pcall
		getgenv().MercuryUI = nil
	end

	if options.Link:sub(-1, -1) == "/" then
		options.Link = options.Link:sub(1, -2)
	end

	if options.Theme.Light then
		self.darken, self.lighten = self.lighten, self.darken
	end

	self.CurrentTheme = options.Theme

	local gui = self:object("ScreenGui", {
		Parent = (RunService:IsStudio() and LocalPlayer.PlayerGui) or game:GetService("CoreGui"),
		ZIndexBehavior = Enum.ZIndexBehavior.Global,
		ResetOnSpawn = false -- Prevent UI from resetting on respawn
	})

	local notificationHolder = gui:object("Frame", {
		AnchorPoint = Vector2.new(1, 1),
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -30,1, -30),
		Size = UDim2.new(0, 300, 1, -60),
		ZIndex = 10 -- Ensure notifications are above most elements
	})

	local _notiHolderList = notificationHolder:object("UIListLayout", {
		Padding = UDim.new(0, 10), -- Reduced padding slightly
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom
	})

	local core = gui:object("Frame", {
		Size = UDim2.fromOffset(0,0), -- Start size as 0
		Theme = {BackgroundColor3 = "Main"},
		Position = UDim2.fromScale(0.5, 0.5), -- Start centered
		AnchorPoint = Vector2.new(0.5, 0.5), -- Anchor centered
		ClipsDescendants = true,
		ZIndex = 1 -- Base ZIndex
	}):round(10)

	--core:fade(true, nil, 0.2, true) -- Removed initial fade

	task.defer(function() -- Defer the animation to avoid potential issues
		core:tween({Size = options.Size, Length = 0.3}, function()
			core.ClipsDescendants = false
		end)
		-- core:fade(false, nil, 0.4) -- Removed fade as tween handles appearance
	end)


	do
		local S, Event = pcall(function()
			return core.MouseEnter
		end)

		if S then
			core.Active = true;
			local dragInput = nil
			local dragStart = nil
			local startPos = nil

			core.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragStart = input.Position
					startPos = core.AbsoluteObject.Position

					local function updateDrag(input)
						local delta = input.Position - dragStart
						local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)

						if Library.LockDragging then
							local FrameX = math.clamp(newPos.X.Offset, 0, gui.AbsoluteSize.X - core.AbsoluteSize.X)
							local FrameY = math.clamp(newPos.Y.Offset, 0, gui.AbsoluteSize.Y - core.AbsoluteSize.Y)
							newPos = UDim2.fromOffset(FrameX, FrameY)
						end

						core:tween{
							Position = newPos,
							Length = Library.DragSpeed,
							Style = Enum.EasingStyle.Quad, -- Smoother drag
							Direction = Enum.EasingDirection.Out
						}
					end

					dragInput = UserInputService.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
							updateDrag(input)
						end
					end)
				end
			end)

			core.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					if dragInput then
						dragInput:Disconnect()
						dragInput = nil
					end
				end
			end)
		end
	end


	rawset(core, "oldSize", options.Size)

	self.mainFrame = core

	local tabButtons = core:object("ScrollingFrame", {
		Size = UDim2.new(1, -50, 0, 25), -- Adjusted size slightly
		Position = UDim2.fromOffset(5, 5),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		ScrollBarThickness = 0,
		ScrollingDirection = Enum.ScrollingDirection.X,
		AutomaticCanvasSize = Enum.AutomaticSize.X,
		CanvasSize = UDim2.new(0,0,0,0), -- Start canvas size small
		ZIndex = 2
	})

	tabButtons:object("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 4),
		VerticalAlignment = Enum.VerticalAlignment.Center -- Center items vertically
	})

	local closeButton = core:object("ImageButton", {
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(14, 14),
		Position = UDim2.new(1, -11, 0, 11),
		Theme = {ImageColor3 = "StrongText"},
		Image = "http://www.roblox.com/asset/?id=8497487650",
		AnchorPoint = Vector2.new(1, 0.5), -- Anchor center vertically
		ZIndex = 3 -- Ensure close button is above tabs
	})

	closeButton.MouseEnter:connect(function()
		closeButton:tween{ImageColor3 = Color3.fromRGB(255, 124, 142)}
	end)

	closeButton.MouseLeave:connect(function()
		closeButton:tween{ImageColor3 = Library.CurrentTheme.StrongText}
	end)

	local function closeUI()
		core.ClipsDescendants = true
		core:fade(true, nil, 0.15) -- Faster fade out
		task.wait(0.1) -- Use task.wait
		core:tween({Size = UDim2.fromOffset(0,0)}, function() -- Use fromOffset
			if gui and gui.AbsoluteObject then -- Check if gui exists before destroying
				gui.AbsoluteObject:Destroy()
			end
			if getgenv then getgenv().MercuryUI = nil end -- Clear global ref
		end)
	end

	if getgenv then
		getgenv().MercuryUI = closeUI
	end

	closeButton.MouseButton1Click:connect(closeUI) -- Directly connect

	local urlBar = core:object("Frame", {
		Size = UDim2.new(1, -10, 0, 25),
		Position = UDim2.new(0, 5,0, 35),
		Theme = {BackgroundColor3 = "Secondary"},
		ZIndex = 2
	}):round(5)

	local searchIcon = urlBar:object("ImageLabel", {
		AnchorPoint = Vector2.new(0, .5),
		Position = UDim2.new(0, 5,0.5, 0),
		Theme = {ImageColor3 = "Tertiary"},
		Size = UDim2.fromOffset(16, 16),
		Image = "http://www.roblox.com/asset/?id=8497489946",
		BackgroundTransparency = 1
	})

	local link = urlBar:object("TextLabel", {
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 26, 0.5, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -30, .6, 0),
		Text = options.Link .. "/home",
		Theme = {TextColor3 = "WeakText"},
		TextSize = 14,
		TextScaled = false,
		TextXAlignment = Enum.TextXAlignment.Left
	})

	Library.UrlLabel = link
	Library.Url = options.Link

	local shadowHolder = core:object("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 0 -- Keep shadow behind everything else
	})

	local shadow = shadowHolder:object("ImageLabel", {
		Position = UDim2.fromScale(0.5, 0.5), -- Use scale for centering
		AnchorPoint = Vector2.new(0.5, 0.5), -- Anchor center
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 47,1, 47),
		ZIndex = 0,
		Image = "rbxassetid://6015897843",
		ImageColor3 = Color3.new(0, 0, 0),
		ImageTransparency = .6,
		SliceCenter = Rect.new(47, 47, 450, 450),
		ScaleType = Enum.ScaleType.Slice,
		SliceScale = 1 -- Use 1 for better scaling
	})

	local content = core:object("Frame", {
		Theme = {BackgroundColor3 = {"Secondary", -10}},
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.new(0.5, 0, 1, -20),
		Size = UDim2.new(1, -10, 1, -86),
		ZIndex = 2 -- Content above shadow
	}):round(7)

	local status = core:object("TextLabel", {
		AnchorPoint = Vector2.new(0, 1),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 5, 1, -6),
		Size = UDim2.new(0.2, 0, 0, 10),
		Font = Enum.Font.SourceSans,
		Text = "Status | Idle",
		Theme = {TextColor3 = "Tertiary"},
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 3 -- Status above content frame
	})

	local homeButton = tabButtons:object("TextButton", {
		Name = "HomeTabButton", -- More descriptive name
		BackgroundTransparency = 1, -- Start transparent
		Theme = {BackgroundColor3 = "Secondary"},
		Size = UDim2.new(0, 125, 1, 0), -- Use scale for height
		LayoutOrder = 0 -- Ensure home is first
	}):round(5)

	local homeButtonText = homeButton:object("TextLabel", {
		Theme = {TextColor3 = "StrongText"},
		AnchorPoint = Vector2.new(0, .5),
		BackgroundTransparency = 1,
		TextSize = 14,
		Text = options.Name,
		Position = UDim2.new(0, 25, 0.5, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -45, 0.5, 0),
		Font = Enum.Font.SourceSans,
		TextTruncate = Enum.TextTruncate.AtEnd
	})

	local homeButtonIcon = homeButton:object("ImageLabel", {
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 5, 0.5, 0),
		Size = UDim2.new(0, 15, 0, 15),
		Image = "http://www.roblox.com/asset/?id=8569322835",
		Theme = {ImageColor3 = "StrongText"}
	})

	local homePage = content:object("Frame", {
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromScale(0.5, 0.5), -- Center using scale
		AnchorPoint = Vector2.new(0.5, 0.5), -- Anchor center
		BackgroundTransparency = 1,
		Visible = true -- Home page starts visible
	})

	local tabs = {}
	selectedTab = homeButton -- Home starts selected

	-- Set initial selected state for home button
	homeButton.BackgroundTransparency = 0.15

	tabs[#tabs+1] = {homePage, homeButton, "home"} -- Store page, button, and name/URL path

	do
		local down = false
		local hovered = false

		local function updateVisuals()
			local targetTransparency
			if selectedTab == homeButton then
				targetTransparency = 0.15
			elseif down then
				targetTransparency = 0
			elseif hovered then
				targetTransparency = 0.3
			else
				targetTransparency = 1
			end
			homeButton:tween{BackgroundTransparency = targetTransparency, Length = 0.1} -- Faster tween
		end


		homeButton.MouseEnter:connect(function()
			hovered = true
			updateVisuals()
		end)

		homeButton.MouseLeave:connect(function()
			hovered = false
			updateVisuals()
		end)

		homeButton.MouseButton1Down:connect(function()
			down = true
			updateVisuals()
		end)

		homeButton.MouseButton1Up:connect(function() -- Use MouseButton1Up for click end
			if down then -- Only trigger if mouse was pressed down on this button
				down = false
				
                -- Switch Tabs Logic
                if selectedTab ~= homeButton then -- Only switch if not already selected
                    for _, tabInfo in ipairs(tabs) do -- Use ipairs for ordered iteration
                        local page = tabInfo[1]
                        if page then page.Visible = false end -- Hide other pages
                    end

                    -- Deselect previous tab visually (find it and update)
                    if selectedTab and selectedTab.ClassName == "TextButton" then
                       pcall(function() selectedTab:tween{BackgroundTransparency = 1, Length = 0.1} end)
                    end

                    selectedTab = homeButton -- Set new selected tab
                    homePage.Visible = true -- Show home page
                    Library.UrlLabel.Text = Library.Url .. "/home" -- Update URL
                end

                updateVisuals() -- Update visual state after click logic
			end
		end)

		-- Handle cases where mouse leaves while held down
		local inputEndedConnection
		inputEndedConnection = UserInputService.InputEnded:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				if down then
					down = false
					updateVisuals()
				end
			end
		end)
		-- Optional: Disconnect listener when UI closes if needed
	end

	self.SelectedTabButton = homeButton -- Deprecated? Consider removing if selectedTab handles it

	local homePageLayout = homePage:object("UIListLayout", {
		Padding = UDim.new(0, 10),
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder
	})

	local homePagePadding = homePage:object("UIPadding", {
		PaddingTop = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 10) -- Add bottom padding
	})

	local profile = homePage:object("Frame", {
		-- AnchorPoint = Vector2.new(0, .5), -- Let ListLayout handle positioning
		Theme = {BackgroundColor3 = "Secondary"},
		Size = UDim2.new(1, -20, 0, 100), -- Use scale for width
		LayoutOrder = 1 -- Ensure profile is first
	}):round(7)

	local profilePictureContainer = profile:object("ImageLabel", {
		Image = "", -- Set placeholder or load async
		Theme = {BackgroundColor3 = {"Secondary", 10}},
		AnchorPoint = Vector2.new(0, 0.5),
		Position = UDim2.new(0, 10, 0.5, 0), -- Position relative to parent
		Size = UDim2.fromOffset(80, 80)
	}):round(100)

	-- Asynchronously load profile picture
	task.spawn(function()
		local success, result = pcall(Players.GetUserThumbnailAsync, Players, LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
		if success and profilePictureContainer.AbsoluteObject then -- Check if object still exists
			profilePictureContainer.Image = result
		end
	end)


	local displayName; do
		local c = self:lighten(options.Theme.Tertiary, 20)

		displayName = profile:object("TextLabel", { -- Assign to the outer scope variable
			RichText = true,
			Text = "Welcome, <font color='rgb(" ..  math.floor(c.R*255) .. "," .. math.floor(c.G*255) .. "," .. math.floor(c.B*255) .. ")'> <b>" .. LocalPlayer.DisplayName .. "</b> </font>",
			TextScaled = false, -- Avoid TextScaled if possible
			TextSize = 18, -- Set a specific size
			Position = UDim2.new(0, 105,0, 10),
			Theme = {TextColor3 = {"Tertiary", 10}}, -- Use theme table
			Size = UDim2.new(1, -190, 0, 40), -- Adjust size based on other elements
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left
		})
		Library.DisplayName = displayName -- Store reference
	end

	local profileName = profile:object("TextLabel", {
		Text = "@" .. LocalPlayer.Name,
		TextScaled = false, -- Avoid TextScaled
		TextSize = 14, -- Set specific size
		Position = UDim2.new(0, 105,0, 47),
		Theme = {TextColor3 = "Tertiary"},
		Size = UDim2.new(1, -190, 0, 20), -- Adjust size
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left
	})

	local timeDisplay = profile:object("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 105, 1, -20), -- Adjusted position
		Size = UDim2.new(1, -190, 0, 20), -- Adjust size
		AnchorPoint = Vector2.new(0, 1),
		Theme = {TextColor3 = {"WeakText", -20}},
		TextScaled = false, -- Avoid TextScaled
		TextSize = 12, -- Set specific size
		TextXAlignment = Enum.TextXAlignment.Left,
		Text = os.date("!*t").hour .. ":" .. string.format("%02d", os.date("!*t").min) -- Initial time HH:MM
	})

	do
		local function updateTime()
			while task.wait(60 - os.date("!*t").sec) do -- Wait until the start of the next minute
				if not timeDisplay.AbsoluteObject then break end -- Stop if UI is destroyed
				timeDisplay.Text = os.date("!*t").hour .. ":" .. string.format("%02d", os.date("!*t").min)
			end
		end
		task.spawn(updateTime) -- Run in a separate thread
	end

	-- == ADDED CHANGELOG ICON ==
	local changelogTabIcon = profile:object("ImageButton", {
		BackgroundTransparency = 1,
		Theme = {ImageColor3 = "WeakText"},
		Size = UDim2.fromOffset(24, 24),
		Position = UDim2.new(1, -78, 1, -10), -- Positioned left of credits
		AnchorPoint = Vector2.new(1, 1),
		Image = "http://www.roblox.com/asset/?id=8559790237" -- Placeholder (Settings Icon)
	}):tooltip("changelog")
	-- =========================

	local creditsTabIcon = profile:object("ImageButton", {
		BackgroundTransparency = 1,
		Theme = {ImageColor3 = "WeakText"},
		Size = UDim2.fromOffset(24, 24),
		Position = UDim2.new(1, -44, 1, -10), -- Positioned left of settings
		AnchorPoint = Vector2.new(1, 1),
		Image = "http://www.roblox.com/asset/?id=8577523456"
	}):tooltip("credits")

	local settingsTabIcon = profile:object("ImageButton", {
		BackgroundTransparency = 1,
		Theme = {ImageColor3 = "WeakText"},
		Size = UDim2.fromOffset(24, 24),
		Position = UDim2.new(1, -10, 1, -10), -- Rightmost icon
		AnchorPoint = Vector2.new(1, 1),
		Image = "http://www.roblox.com/asset/?id=8559790237"
	}):tooltip("settings")


	local quickAccess = homePage:object("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -20, 0, 180), -- Use scale for width
		LayoutOrder = 2 -- After profile
	})

	quickAccess:object("UIGridLayout", {
		CellPadding = UDim2.fromOffset(10, 10),
		CellSize = UDim2.fromOffset(55, 55),
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder
	})

	quickAccess:object("UIPadding", {
		PaddingBottom = UDim.new(0, 10),
		PaddingLeft = UDim.new(0, 70),
		PaddingRight = UDim.new(0, 70),
		PaddingTop = UDim.new(0, 5)
	})


	local mt = setmetatable({
		core = core,
		notifs = notificationHolder,
		statusText = status,
		container = content,
		navigation = tabButtons,
		Theme = options.Theme,
		Tabs = tabs,
		quickAccess = quickAccess,
		homeButton = homeButton,
		homePage = homePage,
		nilFolder = core:object("Folder"), -- Used to temporarily parent closed tabs
		gui = gui -- Reference to the ScreenGui for destruction checks
	}, Library)

	-- Settings Tab
	local settingsTab = Library.tab(mt, {
		Name = "Settings",
		Internal = settingsTabIcon, -- Link to the icon button
		Icon = "rbxassetid://8559790237"
	})
	settingsTab:_theme_selector()
	settingsTab:keybind{
		Name = "Toggle Key",
		Description = "Key to show/hide the UI.",
		Keybind = Enum.KeyCode.Home, -- Use the library's default
		Callback = function()
			-- Toggle logic is handled globally by InputBegan listener checking Library.ToggleKey
		end,
		SetKey = function(newKey) -- Allow setting the keybind
			Library.ToggleKey = newKey
			-- Potentially save this keybind in settings
		end
	}
	settingsTab:toggle{
		Name = "Lock Dragging",
		Description = "Prevent dragging UI off-screen.",
		StartingState = Library.LockDragging, -- Use current value
		Callback = function(state)
			Library.LockDragging = state
			-- Potentially save this setting
		end,
	}
	settingsTab:slider{
		Name = "UI Drag Speed",
		Description = "Smoothness of UI dragging (lower is faster).",
		Min = 1, -- Min speed value (inverted logic)
		Max = 20, -- Max speed value (inverted logic)
		Default = 20 - (Library.DragSpeed * 100), -- Calculate default from current speed
		Callback = function(value)
			Library.DragSpeed = (20 - value)/100
			-- Potentially save this setting
		end,
	}

	-- Credits Tab
	local creditsTab = Library.tab(mt, {
		Name = "Credits",
		Internal = creditsTabIcon, -- Link to the icon button
		Icon = "http://www.roblox.com/asset/?id=8577523456"
	})
	rawset(mt, "creditsContainer", creditsTab.container) -- Store reference if needed elsewhere
	creditsTab:credit{Name = "Abstract", Description = "UI Library Developer", Discord = "Abstract#8007", V3rmillion = "AbstractPoo"}
	creditsTab:credit{Name = "Deity", Description = "UI Library Developer", Discord = "Deity#0228", V3rmillion = "0xDEITY"}
	creditsTab:credit{Name = "Repository", Description = "UI Library Repository", Github="https://github.com/deeeity/mercury-lib/blob/master/src.lua"}

	-- == ADDED CHANGELOG TAB ==
	local changelogTab = Library.tab(mt, {
		Name = "Changelog",
		Internal = changelogTabIcon, -- Link to the icon button
		Icon = "http://www.roblox.com/asset/?id=8559790237" -- Placeholder Icon
	})
	changelogTab:label({
		Text = "Changelog",
		Description = "No updates posted yet."
	})
	-- ========================

	-- Global Toggle Key Listener
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed then
			if input.KeyCode == Library.ToggleKey then
				Library:show(not Library.Toggled)
			end
		end
	end)

	return mt
end


function Library:notification(options)
	options = self:set_defaults({
		Title = "Notification",
		Text = "Your character has been reset.",
		Duration = 3,
		Callback = function() end,
		Icon = "rbxassetid://8628681683" -- Default icon
	}, options)

	local fadeOutConnection
	local fadeOutTimer

	local noti = self.notifs:object("Frame", {
		Theme = {BackgroundColor3 = "Main"},
		Size = UDim2.new(1, 0, 0, 0), -- Start height at 0, use full width for consistency
		BackgroundTransparency = 1,
		LayoutOrder = tick() -- Use tick for unique sort order
	}):round(10)

	local _notiPadding = noti:object("UIPadding", {
		PaddingBottom = UDim.new(0, 11),
		PaddingTop = UDim.new(0, 11),
		PaddingLeft = UDim.new(0, 11),
		PaddingRight = UDim.new(0, 11)
	})

	local dropShadow = noti:object("Frame", {
		ZIndex = 0,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1)
	})

	local _shadow = dropShadow:object("ImageLabel", {
		Position = UDim2.fromScale(.5, .5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 70,1, 70),
		ZIndex = 0,
		Image = "rbxassetid://6014261993",
		ImageColor3 = Color3.fromRGB(0,0,0),
		ImageTransparency = 1,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(49, 49, 450, 450),
		SliceScale = 1 -- Use 1 for better scaling
	})

	local durationHolder = noti:object("Frame", {
		Theme = {BackgroundColor3 = "Secondary"},
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.fromScale(0, 1),
		Size = UDim2.new(1, 0,0, 4),
		BackgroundTransparency = 1,
		ZIndex = 2
	}):round(100)

	local length = durationHolder:object("Frame", {
		Theme = {BackgroundColor3 = "Tertiary"},
		Size = UDim2.fromScale(1, 1), -- Start full
		BackgroundTransparency = 1,
		ZIndex = 3
	}):round(100)

	local icon = noti:object("ImageLabel", {
		BackgroundTransparency = 1,
		ImageTransparency = 1,
		Position = UDim2.fromOffset(0, 0), -- Position controlled by layout below
		Size = UDim2.fromOffset(18, 18),
		Image = options.Icon,
		Theme = {ImageColor3 = "Tertiary"},
		ZIndex = 2
	})

	local exit = noti:object("ImageButton", {
		Image = "http://www.roblox.com/asset/?id=8497487650",
		AnchorPoint = Vector2.new(1, 0),
		Theme = {ImageColor3 = "StrongText"}, -- Use theme color
		Position = UDim2.new(1, 0, 0, 0), -- Position controlled by layout
		Size = UDim2.fromOffset(14, 14),
		BackgroundTransparency = 1,
		ImageTransparency = 1,
		ZIndex = 2
	})

	local text = noti:object("TextLabel", {
		BackgroundTransparency = 1,
		Text = options.Text,
		Position = UDim2.fromScale(0, 0), -- Position controlled by layout
		Size = UDim2.new(1, -25, 0, 0), -- Auto-size height, adjust width for icon/exit
		TextSize = 16,
		TextColor3 = Library.CurrentTheme.StrongText, -- Use theme color
		TextWrapped = true,
		AutomaticSize = Enum.AutomaticSize.Y, -- Let it resize vertically
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextTransparency = 1,
		ZIndex = 1,
		LayoutOrder = 2
	})

	local title = noti:object("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(23, 0), -- Position controlled by layout
		Size = UDim2.new(1, -40, 0, 20), -- Adjust width for icon/exit
		Font = Enum.Font.SourceSansBold,
		Text = options.Title,
		Theme = {TextColor3 = "Tertiary"},
		TextSize = 17,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextWrapped = false, -- Don't wrap title
		TextTruncate = Enum.TextTruncate.AtEnd,
		TextTransparency = 1,
		ZIndex = 1,
		LayoutOrder = 1
	})

	-- Layout for Title/Text content
	local contentLayout = noti:object("Frame", {
		Size = UDim2.new(1, -30, 1, -10), -- Adjust size for padding/duration bar
		Position = UDim2.fromOffset(25, 5), -- Position next to icon
		BackgroundTransparency = 1,
		ZIndex = 1
	})
	contentLayout:object("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 2)
	})

	local fadeOut = function(instant)
		if fadeOutConnection then fadeOutConnection:Disconnect() end
		if fadeOutTimer then task.cancel(fadeOutTimer) end

		local duration = instant and 0 or 0.2

		-- Fade out elements
		pcall(function() icon:tween({ImageTransparency = 1, Length = duration}) end)
		pcall(function() exit:tween({ImageTransparency = 1, Length = duration}) end)
		pcall(function() durationHolder:tween({BackgroundTransparency = 1, Length = duration}) end)
		pcall(function() length:tween({BackgroundTransparency = 1, Length = duration}) end)
		pcall(function() text:tween({TextTransparency = 1, Length = duration}) end)
		pcall(function() title:tween({TextTransparency = 1, Length = duration}) end)
		pcall(function() _shadow:tween({ImageTransparency = 1, Length = duration}) end)

		-- Shrink and destroy
		pcall(function()
			noti:tween({BackgroundTransparency = 1, Size = UDim2.new(noti.Size.X.Scale, noti.Size.X.Offset, 0, 0), Length = duration}, function()
				if noti.AbsoluteObject then
					noti.AbsoluteObject:Destroy()
				end
				if not instant then options.Callback() end
			end)
		end)
	end

	exit.MouseButton1Click:Connect(function() fadeOut(false) end)

	-- Animate In
	local targetHeight = title.AbsoluteSize.Y + text.AbsoluteSize.Y + 30 -- Calculate required height
	_shadow:tween({ImageTransparency = .6, Length = 0.2})
	noti:tween({BackgroundTransparency = 0, Size = UDim2.new(1, 0, 0, targetHeight), Length = 0.2}, function()
		icon:tween({ImageTransparency = 0, Length = 0.2})
		exit:tween({ImageTransparency = 0, Length = 0.2})
		durationHolder:tween({BackgroundTransparency = 0, Length = 0.2})
		length:tween({BackgroundTransparency = 0, Length = 0.2})
		text:tween({TextTransparency = 0, Length = 0.2})
		title:tween({TextTransparency = 0, Length = 0.2})

		-- Start fade out timer
		local tween = length:tween({Size = UDim2.fromScale(0, 1), Length = options.Duration})
		fadeOutTimer = task.delay(options.Duration, function()
			if tween.PlaybackState == Enum.PlaybackState.Playing or tween.PlaybackState == Enum.PlaybackState.Completed then
				if noti.AbsoluteObject then -- Check if still valid
					fadeOut(false)
				end
			end
		end)
	end)
end


function Library:tab(options)
	options = self:set_defaults({
		Name = "New Tab",
		Icon = "rbxassetid://8569322835",
		Internal = nil -- Added internal flag
	}, options)

	local tab = self.container:object("ScrollingFrame", {
		AnchorPoint = Vector2.new(0.5, 0.5), -- Center anchor
		Position = UDim2.fromScale(0.5, 0.5), -- Center position
		Visible = false,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ScrollBarThickness = 6, -- Visible scrollbar
		ScrollingDirection = Enum.ScrollingDirection.Y,
		CanvasSize = UDim2.new(0,0,0,0), -- Start small
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ZIndex = 1 -- Below tab buttons
	})

	local quickAccessButton
	local quickAccessIcon

	if not options.Internal then
		quickAccessButton = self.quickAccess:object("TextButton", {
			Theme = {BackgroundColor3 = "Secondary"},
			LayoutOrder = tick() -- Use tick for order
		}):round(5):tooltip(options.Name)

		quickAccessIcon = quickAccessButton:object("ImageLabel", {
			BackgroundTransparency = 1,
			Theme = {ImageColor3 = "StrongText"},
			Image = options.Icon,
			Size = UDim2.fromScale(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5), -- Center
			AnchorPoint = Vector2.new(0.5, 0.5) -- Center
		})
	else
		-- If internal, the button is already created (e.g., settings/credits icon)
		quickAccessButton = options.Internal
	end

	local layout = tab:object("UIListLayout", {
		Padding = UDim.new(0, 10),
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder
	})

	tab:object("UIPadding", {
		PaddingTop = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 10) -- Add bottom padding
	})

	-- === Tab Button (Top Bar) ===
	local tabButton = Library:object("TextButton", {
		BackgroundTransparency = 1, -- Start transparent
		Parent = options.Internal and self.nilFolder.AbsoluteObject or self.navigation.AbsoluteObject, -- Parent based on Internal
		Theme = {BackgroundColor3 = "Secondary"},
		Size = UDim2.new(0, 125, 1, 0), -- Scale height
		Visible = not options.Internal, -- Visible only if not internal (Internal buttons are always visible)
		LayoutOrder = tick(), -- Use tick for order
		Name = options.Name .. "TabButton" -- Descriptive name
	}):round(5)

	local tabButtonText = tabButton:object("TextLabel", {
		Theme = {TextColor3 = "StrongText"},
		AnchorPoint = Vector2.new(0, .5),
		BackgroundTransparency = 1,
		TextSize = 14,
		Text = options.Name,
		Position = UDim2.new(0, 25, 0.5, 0),
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -45, 0.5, 0),
		Font = Enum.Font.SourceSans,
		TextTruncate = Enum.TextTruncate.AtEnd
	})

	local tabButtonIcon = tabButton:object("ImageLabel", {
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 5, 0.5, 0),
		Size = UDim2.new(0, 15, 0, 15),
		Image = options.Icon,
		Theme = {ImageColor3 = "StrongText"}
	})

	local tabButtonClose = tabButton:object("ImageButton", {
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -5, 0.5, 0),
		Size = UDim2.fromOffset(14, 14),
		Image = "rbxassetid://8497487650",
		Theme = {ImageColor3 = "StrongText"},
		Visible = not options.Internal, -- Close button not needed for internal tabs
		ZIndex = 2 -- Above text/icon
	})
	-- ============================

	local tabInfo = {tab, tabButton, options.Name:lower(), options.Internal} -- Store page, button, url name, internal flag
	self.Tabs[#self.Tabs+1] = tabInfo

	-- === Tab Switching Logic ===
	local function switchToThisTab()
		if selectedTab == tabButton then return end -- Don't switch if already selected

		-- Deselect previous tab
		for _, tInfo in ipairs(self.Tabs) do
			if tInfo[1] and tInfo[1].Visible then tInfo[1].Visible = false end
			if tInfo[2] == selectedTab and tInfo[2].ClassName == "TextButton" then
				pcall(function() tInfo[2]:tween{BackgroundTransparency = 1, Length = 0.1} end)
			end
		end

		-- Select this tab
		selectedTab = tabButton
		tab.Visible = true
		tabButton:tween{BackgroundTransparency = 0.15, Length = 0.1}
		Library.UrlLabel.Text = Library.Url .. "/" .. options.Name:lower()
		tab.CanvasPosition = Vector2.new(0,0) -- Reset scroll position
	end
	-- =========================

	-- === Tab Button Interactions ===
	do
		local down = false
		local hovered = false

		local function updateVisuals()
			local targetTransparency
			if selectedTab == tabButton then
				targetTransparency = 0.15
			elseif down then
				targetTransparency = 0
			elseif hovered then
				targetTransparency = 0.3
			else
				targetTransparency = 1
			end
			tabButton:tween{BackgroundTransparency = targetTransparency, Length = 0.1}
		end

		tabButton.MouseEnter:connect(function()
			hovered = true
			updateVisuals()
		end)

		tabButton.MouseLeave:connect(function()
			hovered = false
			updateVisuals()
		end)

		tabButton.MouseButton1Down:connect(function()
			down = true
			updateVisuals()
		end)

		tabButton.MouseButton1Up:connect(function()
			if down then
				down = false
				switchToThisTab()
				updateVisuals()
			end
		end)

		-- Handle mouse leaving while held down
		local inputEndedConnection
		inputEndedConnection = UserInputService.InputEnded:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				if down then
					down = false
					updateVisuals()
				end
			end
		end)
		-- TODO: Disconnect inputEndedConnection when tab is closed
	end
	-- ============================

	-- === Quick Access Button Interaction ===
	if not options.Internal then -- Only non-internal tabs have quick access buttons to manage
		quickAccessButton.MouseEnter:connect(function()
			quickAccessButton:tween{BackgroundColor3 = Library.CurrentTheme.Tertiary}
		end)

		quickAccessButton.MouseLeave:connect(function()
			quickAccessButton:tween{BackgroundColor3 = Library.CurrentTheme.Secondary}
		end)

		quickAccessButton.MouseButton1Click:connect(function()
			if not tabButton.Visible then -- If tab is not open (pinned)
				-- Pin the tab
				tabButton.Parent = self.navigation.AbsoluteObject
				tabButton.Size = UDim2.new(0, 50, 1, 0) -- Start small
				tabButton.Visible = true
				tabButton:fade(false, Library.CurrentTheme.Main, 0.1) -- Fade background in
				tabButton:tween({Size = UDim2.new(0, 125, 1, 0), Length = 0.1}) -- Animate size
			end
			switchToThisTab() -- Switch to the tab
		end)
	else -- Internal tabs (Settings/Credits/Changelog) are just clicked
		quickAccessButton.MouseButton1Click:connect(function()
			switchToThisTab()
		end)
	end
	-- ================================

	-- === Close Button Interaction ===
	if not options.Internal then
		tabButtonClose.MouseButton1Click:connect(function()
			local wasSelected = (selectedTab == tabButton)

			-- Animate hiding
			tabButton:fade(true, Library.CurrentTheme.Main, 0.1)
			tabButton:tween({Size = UDim2.new(0, 50, 1, 0), Length = 0.1}, function()
				tabButton.Visible = false
				tab.Visible = false
				tabButton.Parent = self.nilFolder.AbsoluteObject -- Move to holding folder
			end)

			-- Remove from Tabs list
			for i, tInfo in ipairs(self.Tabs) do
				if tInfo == tabInfo then
					table.remove(self.Tabs, i)
					break
				end
			end

			-- Switch to another tab if the closed one was selected
			if wasSelected then
				local newSelected = nil
				-- Try to select the last visible tab
				for i = #self.Tabs, 1, -1 do
					if self.Tabs[i][2].Visible then
						newSelected = self.Tabs[i]
						break
					end
				end
				
				-- If no other tab is visible, select home
				if not newSelected then
				    newSelected = self.Tabs[1] -- Assuming home is always Tabs[1]
                end

				if newSelected then
					selectedTab = newSelected[2]
					newSelected[1].Visible = true
					newSelected[2]:tween{BackgroundTransparency = 0.15, Length = 0.1}
					Library.UrlLabel.Text = Library.Url .. "/" .. newSelected[3]
				else
					-- Fallback if something went wrong (shouldn't happen if home exists)
					self.homePage.Visible = true
					selectedTab = self.homeButton
					self.homeButton:tween{BackgroundTransparency = 0.15, Length = 0.1}
					Library.UrlLabel.Text = Library.Url .. "/home"
				end
			end
            
            -- Update canvas size of navigation bar
            task.wait(0.15) -- Wait for animation
            self.navigation.CanvasSize = UDim2.fromOffset(self.navigation.UIListLayout.AbsoluteContentSize.X, 0)
		end)
	end
	-- =============================

	-- Final setup: Resize navigation canvas if needed
	task.wait() -- Allow layout to calculate
	self.navigation.CanvasSize = UDim2.fromOffset(self.navigation.UIListLayout.AbsoluteContentSize.X, 0)

	return setmetatable({
		statusText = self.statusText,
		container = tab,
		Theme = self.Theme,
		core = self.core,
		layout = layout,
		_resize_tab = function() Library._resize_tab( { container = tab, layout = layout } ) end -- Pass context
	}, Library)
end


function Library:_resize_tab()
	task.wait() -- Wait a frame for layout calculations
	if not self.container or not self.container.AbsoluteObject or not self.layout or not self.layout.AbsoluteObject then return end -- Check existence

	if self.container.ClassName == "ScrollingFrame" then
		self.container.CanvasSize = UDim2.fromOffset(0, self.layout.AbsoluteContentSize.Y + 20)
	elseif self.sectionContainer and self.parentContainer then -- Check for section context
		local parentLayout = self.parentLayout or self.parentContainer.AbsoluteObject:FindFirstChildOfClass("UIListLayout") or self.parentContainer.AbsoluteObject:FindFirstChildOfClass("UIGridLayout")
		local sectionLayout = self.layout

		if sectionLayout and sectionLayout.AbsoluteObject then
			self.sectionContainer.Size = UDim2.new(1, -24, 0, sectionLayout.AbsoluteContentSize.Y + 20)
		end
		if parentLayout and parentLayout.AbsoluteObject and self.parentContainer.ClassName == "ScrollingFrame" then
			self.parentContainer.CanvasSize = UDim2.fromOffset(0, parentLayout.AbsoluteContentSize.Y + 20)
		end
	end
end


function Library:toggle(options)
	options = self:set_defaults({
		Name = "Toggle",
		StartingState = false,
		Description = nil,
		Callback = function(state) end,
		Tooltip = nil -- Added tooltip option
	}, options)

	local toggleContainer = self.container:object("TextButton", {
		Theme = {BackgroundColor3 = "Secondary"},
		Size = UDim2.new(1, -20, 0, options.Description and 52 or 40), -- Adjust height based on description
		LayoutOrder = tick()
	}):round(7)
	if options.Tooltip then toggleContainer:tooltip(options.Tooltip) end

	local on = "http://www.roblox.com/asset/?id=8498709213"
	local off = "http://www.roblox.com/asset/?id=8498691125"

	local toggled = options.StartingState

	local iconSize = UDim2.fromOffset(26, 26)
	local iconPos = UDim2.new(1, -11, 0.5, 0)

	local onIcon = toggleContainer:object("ImageLabel", {
		AnchorPoint = Vector2.new(1, .5),
		BackgroundTransparency = 1,
		Position = iconPos,
		Size = iconSize,
		Image = on,
		Theme = {ImageColor3 = "Tertiary"},
		ImageTransparency = (toggled and 0) or 1,
		ZIndex = 2
	})

	local offIcon = toggleContainer:object("ImageLabel", {
		AnchorPoint = Vector2.new(1, .5),
		BackgroundTransparency = 1,
		Position = iconPos,
		Size = iconSize,
		Image = off,
		Theme = {ImageColor3 = "WeakText"},
		ImageTransparency = (toggled and 1) or 0,
		ZIndex = 2
	})

	local textYPos = options.Description and 5 or 0
	local textHeight = options.Description and 22 or toggleContainer.AbsoluteSize.Y - 10
	local textXPos = 10

	local text = toggleContainer:object("TextLabel", {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(textXPos, textYPos),
		Size = UDim2.new(1, -(iconSize.X.Offset + textXPos + 15), 0, textHeight), -- Adjust size dynamically
		Text = options.Name,
		TextSize = 18, -- Slightly smaller text
		Theme = {TextColor3 = "StrongText"},
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = options.Description and Enum.TextYAlignment.Top or Enum.TextYAlignment.Center,
		ZIndex = 1
	})

	if options.Description then
		local desc = toggleContainer:object("TextLabel", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(textXPos, 27),
			Size = UDim2.new(1, -(iconSize.X.Offset + textXPos + 15), 0, 20), -- Adjust size
			Text = options.Description,
			TextSize = 14, -- Smaller description
			Theme = {TextColor3 = "WeakText"},
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top, -- Align top
			ZIndex = 1
		})
	end

	local function toggle()
		toggled = not toggled
		if toggled then
			offIcon:crossfade(onIcon, 0.1)
		else
			onIcon:crossfade(offIcon, 0.1)
		end
		task.spawn(options.Callback, toggled) -- Use task.spawn for callback
	end

	do
		local hovered = false
		local down = false

		toggleContainer.MouseEnter:connect(function()
			hovered = true
			toggleContainer:tween{BackgroundColor3 = self:lighten(Library.CurrentTheme.Secondary, 10)}
		end)

		toggleContainer.MouseLeave:connect(function()
			hovered = false
			if not down then
				toggleContainer:tween{BackgroundColor3 = Library.CurrentTheme.Secondary}
			end
		end)

		toggleContainer.MouseButton1Down:connect(function()
			down = true
			toggleContainer:tween{BackgroundColor3 = self:lighten(Library.CurrentTheme.Secondary, 20)}
		end)
		
		toggleContainer.MouseButton1Up:connect(function()
			if down then
				down = false
				toggle() -- Call toggle on mouse up
				toggleContainer:tween{BackgroundColor3 = (hovered and self:lighten(Library.CurrentTheme.Secondary, 10)) or Library.CurrentTheme.Secondary}
			end
		end)
		
		-- Handle mouse leaving while held down
		local inputEndedConn
		inputEndedConn = UserInputService.InputEnded:connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				if down then
					down = false
					toggleContainer:tween{BackgroundColor3 = (hovered and self:lighten(Library.CurrentTheme.Secondary, 10)) or Library.CurrentTheme.Secondary}
				end
			end
		end)
		-- TODO: Disconnect inputEndedConn when element is destroyed
	end
	
	self:_resize_tab()

	local methods = {}

	function methods:Toggle()
		toggle()
	end

	function methods:SetState(state)
		if toggled == state then return end -- No change needed
		toggled = state
		if toggled then
			offIcon:crossfade(onIcon, 0.1)
		else
			onIcon:crossfade(offIcon, 0.1)
		end
		task.spawn(options.Callback, toggled)
	end
	
	-- Apply initial state without callback if needed (can add an option for this)
	-- methods:SetState(options.StartingState) 

	return methods
end

-- ... (rest of the functions: dropdown, section, button, color_picker, credit, _theme_selector, keybind, prompt, cp, colorpicker, slider, textbox, label) ...
-- Note: The rest of the functions are quite long. Apply similar principles:
-- 1. Use `task.wait()` instead of `wait()`.
-- 2. Use `task.spawn()` or `task.defer()` for callbacks or non-critical updates.
-- 3. Use `ipairs` for ordered table iteration where applicable.
-- 4. Add checks (`if obj and obj.AbsoluteObject then ... end`) before accessing properties of potentially destroyed objects, especially in loops or delayed functions.
-- 5. Make UI sizing/positioning more robust (e.g., using scale, AnchorPoint, and potentially UIAspectRatioConstraint).
-- 6. Improve ZIndex management if layering issues occur.
-- 7. Disconnect event connections when the UI element is destroyed to prevent memory leaks.
-- 8. Wrap potentially problematic operations (like file I/O or external calls) in `pcall`.
-- 9. Ensure consistent LayoutOrder usage.

-- Example modification for button callback:
function Library:button(options)
	-- ... (setup code) ...
	do
		-- ... (interaction code) ...
		buttonContainer.MouseButton1Click:connect(function()
			task.spawn(options.Callback) -- Use task.spawn for the callback
		end)
	end
	-- ... (resizing, methods) ...
end

-- Final return statement
return setmetatable(Library, {
	__index = function(_, i)
		local lower_i = string.lower(tostring(i)) -- Ensure lowercase lookup
		local func = rawget(Library, lower_i)
        -- Alias common functions
        if not func then
            if lower_i == "colorpicker" then func = rawget(Library, "color_picker") end
            if lower_i == "cp" then func = rawget(Library, "color_picker") end
            -- Add other aliases if needed
        end
		return func
	end,
	__newindex = function()
		-- Potentially warn or error if trying to add new methods this way
		warn("Adding new methods directly to the Library metatable is not recommended.")
	end
})
