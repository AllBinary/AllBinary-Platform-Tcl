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
# package org.allbinary.game.midlet

oo::class create ::GameMidletEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::GameMidletEventHandler {
    method initFields_GameMidletEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_GameMidletEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set gameMidletEventListener $eventListenerInterface
        $gameMidletEventListener onGameEnd $eventObject
    }
}

namespace eval ::GameMidletEventHandler {
    variable gameKeyEventHandlerValue {}
    variable gameKeyEventHandlerSet 0
    proc staticGet_gameKeyEventHandler {} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        if {!$gameKeyEventHandlerSet} {
            set gameKeyEventHandlerSet 1
            set gameKeyEventHandlerValue [::GameMidletEventHandler new]
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
        return [::GameMidletEventHandler::staticGet_gameKeyEventHandler]
    }
}


