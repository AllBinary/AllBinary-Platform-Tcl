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
# package org.allbinary.game.configuration.event

oo::class create ::GameFeatureEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::GameFeatureEventHandler {
    method initFields_GameFeatureEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_GameFeatureEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set gameFeatureListenerInterface ($eventListenerInterface)
        $gameFeatureListenerInterface onGameFeatureChange $eventObject
    }
}

namespace eval ::GameFeatureEventHandler {
    variable gameKeyEventHandlerValue {}
    variable gameKeyEventHandlerSet 0
    proc staticGet_gameKeyEventHandler {} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        if {!$gameKeyEventHandlerSet} {
            set gameKeyEventHandlerSet 1
            set gameKeyEventHandlerValue [::GameFeatureEventHandler new]
        }
        return $gameKeyEventHandlerValue
    }
    proc staticSet_gameKeyEventHandler {value} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        set gameKeyEventHandlerSet 1
        set gameKeyEventHandlerValue $value
    }
    proc getInstance {} {
        return [::GameFeatureEventHandler::staticGet_gameKeyEventHandler]
    }
}


