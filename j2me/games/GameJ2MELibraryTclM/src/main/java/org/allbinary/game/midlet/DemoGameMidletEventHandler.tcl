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

oo::class create ::DemoGameMidletEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::DemoGameMidletEventHandler {
    method initFields_DemoGameMidletEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_DemoGameMidletEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set demoGameMidletEventListener $eventListenerInterface
        $demoGameMidletEventListener onDemoGameMidletEvent $eventObject
    }
}

namespace eval ::DemoGameMidletEventHandler {
    variable gameKeyEventHandlerValue {}
    variable gameKeyEventHandlerSet 0
    proc staticGet_gameKeyEventHandler {} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        if {!$gameKeyEventHandlerSet} {
            set gameKeyEventHandlerSet 1
            set gameKeyEventHandlerValue [::DemoGameMidletEventHandler new]
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
        return [::DemoGameMidletEventHandler::staticGet_gameKeyEventHandler]
    }
}


