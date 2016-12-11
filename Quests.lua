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
			locationName = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(39905,	Z.AZSUNA,			43.2,	43.6,	"Neutral")
	AddQuest(39923,	Z.AZSUNA,			47.2,	26.4,	"Neutral")
	AddQuest(39875, Z.DALARAN_BROKENISLES,		38.3,	41.5,	"Neutral")
	AddQuest(39882,	Z.VALSHARAH,			54.4,	57.6,	"Neutral")
	AddQuest(39883,	Z.THUNDER_TOTEM,		44.2,	45.2,	"Neutral")
	AddQuest(39904,	Z.STORMHEIM,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39910,	Z.AZSUNA,			46.8,	40.8,	"Neutral")
	AddQuest(39914,	Z.AZSUNA,			46.8,	40.8,	"Neutral")
	AddQuest(39918,	Z.AZSUNA,			46.8,	40.8,	"Neutral")
	AddQuest(41669,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41670,	Z.VALSHARAH,			54.6,	73.2,	"Neutral")
	AddQuest(41671,	Z.THUNDER_TOTEM,		38.4,	46.0,	"Neutral")
	AddQuest(41672, Z.STORMHEIM,			60.2,	51.2,	"Neutral")
	AddQuest(41673,	Z.SURAMAR,			36.8,	46.6,	"Neutral")
	AddQuest(41674,	Z.DALARAN_BROKENISLES,		33.4,	48.0,	"Neutral")
	AddQuest(42971,	Z.DEEPHOLM,			56.4,	12.2,	"Neutral")

	self.InitializeQuests = nil
end
