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
	AddQuest(39882,	Z.VALSHARAH,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39883,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39904,	Z.STORMHEIM,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39910,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39914,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39918,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41670,	Z.VALSHARAH,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41671,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41672, Z.STORMHEIM,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41673,	Z.SURAMAR,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41674,	Z.DALARAN_BROKENISLES,		0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41669,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(42971,	Z.DEEPHOLM,			46.8,	13.2,	"Neutral") --Needs updating
	AddQuest(42973,	Z.SURAMAR,			0.0,	0.0,	"Neutral") --Needs updating

	self.InitializeQuests = nil
end
