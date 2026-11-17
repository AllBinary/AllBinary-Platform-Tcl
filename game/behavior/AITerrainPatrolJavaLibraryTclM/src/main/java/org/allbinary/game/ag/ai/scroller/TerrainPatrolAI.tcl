#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.game.ag.ai.scroller

oo::class create ::TerrainPatrolAI {
    superclass ::PacePatrolAI
}

oo::define ::TerrainPatrolAI {
    method initFields_TerrainPatrolAI {} {
        my jset terrainEventListener {}
        my jset DOWN {}
        my jset CLIFF {}
        my jset terrainEventListener [::TerrainEventListener new]
        my jset DOWN [[::AngleFactory::getInstance] jget DOWN]
        my jset CLIFF [::BasicTerrainInfo new [my jget DOWN]]
        return
    }
    

    constructor {hashtable ownerLayerInterface gameInput} {
        next $hashtable $ownerLayerInterface $gameInput
        my initFields_TerrainPatrolAI
        [::TerrainEventHandler::getInstance $ownerLayerInterface] addListener [my jget terrainEventListener]
        [my jget terrainEventListener] onTerrainEvent [[::TerrainEventCircularStaticPool::getInstance] getNext [my jget CLIFF]]
    }
    

    method update {} {
        next
        my changeDirectionIfCliffReached
    }
    

    method changeDirectionIfCliffReached {} {
        set list [[my jget terrainEventListener] getList]
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set terrainEvent [$list removeAt $index]
            set basicTerrainInfo [$terrainEvent getBasicTerrainInfo]
            set angle [$basicTerrainInfo getAngle]
            if {[expr {$angle eq [my jget DOWN]}]} {
                my nextDirection
                if {[expr {![my jget isFollowLimitedByTerrain]}]} {
                    [my jget logUtil] putF "Following Limited" [self] "onTerrainEvent"
                    my jset isFollowLimitedByTerrain true
                }
            }
        }
    }
}

namespace eval ::TerrainPatrolAI {
}


