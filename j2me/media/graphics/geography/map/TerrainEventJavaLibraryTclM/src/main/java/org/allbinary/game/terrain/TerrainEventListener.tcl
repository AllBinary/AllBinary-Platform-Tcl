# Generated Code Do Not Modify
# package org.allbinary.game.terrain

oo::class create ::TerrainEventListener {
    superclass ::JObject
}

oo::define ::TerrainEventListener {
    method initFields_TerrainEventListener {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_TerrainEventListener
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onTerrainEvent {terrainEvent} {
        [my jget list] clear
        [my jget list] add $terrainEvent
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::TerrainEventListener {
}


