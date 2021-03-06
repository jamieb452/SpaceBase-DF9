local Class = require('Class')
local Event = require('GameEvents.Event')
local EventData = require('GameEvents.EventData')
local ImmigrationEvent = require('GameEvents.ImmigrationEvent')
local DockingEvent = require('GameEvents.DockingEvent')
local HostileDockingEvent = Class.create(DockingEvent)

local GameRules = require('GameRules')
local Docking = require('Docking')
local DFUtil = require('DFCommon.Util')
local GenericDialog = require('UI.GenericDialog')
local Portraits = require('UI.Portraits')
local AlertEntry = require('UI.AlertEntry')
local CharacterManager = require('CharacterManager')
local MiscUtil = require('MiscUtil')

HostileDockingEvent.sEventType = 'hostileDockingEvents'
HostileDockingEvent.DEFAULT_WEIGHT = 5.0
HostileDockingEvent.nMinPopulation = 4
HostileDockingEvent.nMaxPopulation = -1
HostileDockingEvent.nMinTime = 60*10
HostileDockingEvent.nMaxTime = -1
HostileDockingEvent.bHostile = true
HostileDockingEvent.nChanceObey = 0.33
HostileDockingEvent.nChanceHostile = 0.66
HostileDockingEvent.sExpMod = 'population'

return HostileDockingEvent
