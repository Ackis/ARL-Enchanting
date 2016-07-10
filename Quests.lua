-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			location = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(39905,	Z.AZSUNA,			0.0,	0.0,	"Neutral") -- Ringing True  --Needs updating
	AddQuest(39923,	Z.AZSUNA,			0.0,	0.0,	"Neutral") -- Down to the Core --Needs updating
	AddQuest(39875, Z.DALARAN_BROKENISLES,		38.3,	41.5,	"Neutral")
	AddQuest(41672, Z.STORMHEIM,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41669,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(42971,	Z.DEEPHOLM,			46.8,	13.2,	"Neutral") --Needs updating

	self.InitializeQuests = nil
end
