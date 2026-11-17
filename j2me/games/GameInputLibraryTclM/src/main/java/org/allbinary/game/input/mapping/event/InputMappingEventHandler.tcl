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
# package org.allbinary.game.input.mapping.event

oo::class create ::InputMappingEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::InputMappingEventHandler {
    method initFields_InputMappingEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_InputMappingEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set inputMappingEventListenerInterface $eventListenerInterface
        $inputMappingEventListenerInterface onInputMappingEvent $eventObject
    }
}

namespace eval ::InputMappingEventHandler {
    variable gameKeyEventHandlerValue {}
    variable gameKeyEventHandlerSet 0
    proc staticGet_gameKeyEventHandler {} {
        variable gameKeyEventHandlerValue
        variable gameKeyEventHandlerSet
        if {!$gameKeyEventHandlerSet} {
            set gameKeyEventHandlerSet 1
            set gameKeyEventHandlerValue [::InputMappingEventHandler new]
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
        return [::InputMappingEventHandler::staticGet_gameKeyEventHandler]
    }
}


