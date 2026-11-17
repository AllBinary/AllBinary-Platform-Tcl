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
# package org.allbinary.game.terrain

oo::class create ::TerrainEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::TerrainEventHandler {
    method initFields_TerrainEventHandler {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    
    
    

    constructor {} {
        next
        my initFields_TerrainEventHandler
    }
    

    method addListener {terrainEventListener} {
        if {[expr {![[my jget list] contains $terrainEventListener]}]} {
            [my jget list] add $terrainEventListener
        }
    }
    

    method removeAllListeners {} {
        [my jget list] clear
        next
    }
    

    method removeListener {eventListenerInterface} {
        [my jget list] remove $eventListenerInterface
        next $eventListenerInterface
    }
    

    method fireEvent {eventObject} {
        for {set index [[my jget list] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            try {
                set terrainEventListener [[my jget list] get $index]
                $terrainEventListener onTerrainEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        next $eventObject
    }
    

    method process {eventObject eventListenerInterface} {
        set terrainEventListenerInterface $eventListenerInterface
        $terrainEventListenerInterface onTerrainEvent $eventObject
    }
}

namespace eval ::TerrainEventHandler {
    variable hashtableValue {}
    variable hashtableSet 0
    proc staticGet_hashtable {} {
        variable hashtableValue
        variable hashtableSet
        if {!$hashtableSet} {
            set hashtableSet 1
            set hashtableValue [[::StdUtil::getInstance] jget NULL_TABLE]
        }
        return $hashtableValue
    }
    proc staticSet_hashtable {value} {
        variable hashtableValue
        variable hashtableSet
        set hashtableSet 1
        set hashtableValue $value
    }
    proc init {} {
        ::TerrainEventHandler::staticSet_hashtable [[::StdUtil::getInstance] createHashtable]
    }
    proc getInstance {anyType} {
        set eventHandlerCanBeNull [[::TerrainEventHandler::staticGet_hashtable] get $anyType]
        if {[expr {$eventHandlerCanBeNull eq {}}]} {
            set eventHandlerCanBeNull [::TerrainEventHandler new]
            [::TerrainEventHandler::staticGet_hashtable] put $anyType $eventHandlerCanBeNull
        }
        return $eventHandlerCanBeNull
    }
}


