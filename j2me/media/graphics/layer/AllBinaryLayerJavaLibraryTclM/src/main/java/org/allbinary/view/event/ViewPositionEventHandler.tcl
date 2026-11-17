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
# package org.allbinary.view.event

oo::class create ::ViewPositionEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::ViewPositionEventHandler {
    method initFields_ViewPositionEventHandler {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_ViewPositionEventHandler
    }
    

    method addListener {layerInterface} {
        if {[expr {![[my jget list] contains $layerInterface]}]} {
            [my jget list] add $layerInterface
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
                set layerInterface [[[my jget list] jget objectArray] get $index]
                $layerInterface onChangeEvent $eventObject
            } on error {e} {
                [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::EventStrings::getInstance] jget FIRE_EVENT] $e
            }
        }
        next $eventObject
    }
    

    method process {eventObject eventListenerInterface} {
        set viewPositionEventListenerInterface ($eventListenerInterface)
        $viewPositionEventListenerInterface onChangeEvent $eventObject
    }
}

namespace eval ::ViewPositionEventHandler {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::ViewPositionEventHandler new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::ViewPositionEventHandler::staticGet_SINGLETON]
    }
}


