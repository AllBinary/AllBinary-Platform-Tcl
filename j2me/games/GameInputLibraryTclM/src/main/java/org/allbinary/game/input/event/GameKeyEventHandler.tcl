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
# package org.allbinary.game.input.event

oo::class create ::GameKeyEventHandler {
    superclass ::JObject
}

oo::define ::GameKeyEventHandler {
    method initFields_GameKeyEventHandler {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset pressGameKeyEventHandler {}
        my jset upGameKeyEventHandler {}
        my jset downGameKeyEventHandler {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset pressGameKeyEventHandler [::PressGameKeyEventHandler::getInstance]
        my jset upGameKeyEventHandler [::UpGameKeyEventHandler::getInstance]
        my jset downGameKeyEventHandler [::DownGameKeyEventHandler::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_GameKeyEventHandler
    }
    
    

    method removeAllListeners {} {
        [my jget pressGameKeyEventHandler] removeAllListeners
        [my jget upGameKeyEventHandler] removeAllListeners
        [my jget downGameKeyEventHandler] removeAllListeners
    }
    

    method addListenerForPlayer {eventListenerInterface playerInputId} {
        [my jget logUtil] putF [$eventListenerInterface toString] [self] [[my jget commonStrings] jget ADD_LISTENER]
        [my jget pressGameKeyEventHandler] addListenerSingleThreaded $eventListenerInterface
        [[my jget upGameKeyEventHandler] getInstanceForPlayer $playerInputId] addListenerSingleThreaded $eventListenerInterface
        [[my jget downGameKeyEventHandler] getInstanceForPlayer $playerInputId] addListenerSingleThreaded $eventListenerInterface
    }
    

    method addListener {eventListenerInterface} {
        [my jget logUtil] putF [$eventListenerInterface toString] [self] [[my jget commonStrings] jget ADD_LISTENER]
        [my jget pressGameKeyEventHandler] addListenerSingleThreaded $eventListenerInterface
        [my jget upGameKeyEventHandler] addListenerSingleThreaded $eventListenerInterface
        [my jget downGameKeyEventHandler] addListenerSingleThreaded $eventListenerInterface
    }
    

    method removeListener {eventListenerInterface} {
        [my jget logUtil] putF [$eventListenerInterface toString] [self] [[my jget commonStrings] jget REMOVE_LISTENER]
        [my jget pressGameKeyEventHandler] removeListenerSingleThreaded $eventListenerInterface
        [my jget upGameKeyEventHandler] removeListenerSingleThreaded $eventListenerInterface
        [my jget downGameKeyEventHandler] removeListenerSingleThreaded $eventListenerInterface
    }
}

namespace eval ::GameKeyEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameKeyEventHandler new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::GameKeyEventHandler::staticGet_instance]
    }
}


