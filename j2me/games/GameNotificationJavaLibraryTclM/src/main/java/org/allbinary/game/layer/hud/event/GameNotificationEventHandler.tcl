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
# package org.allbinary.game.layer.hud.event

oo::class create ::GameNotificationEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::GameNotificationEventHandler {
    method initFields_GameNotificationEventHandler {} {
        my jset enabled false
        my jset enabled true
        return
    }
    

    constructor {} {
        next
        my initFields_GameNotificationEventHandler
    }
    

    method removeAllListeners {} {
        set eventListenerInterface [::NullEventListener::staticGet_NULL_EVENT_LISTENER]
        set list [my jget eventListenerInterfaceList]
        if {[expr {[$list size] > 0}]} {
            set eventListenerInterface [[$list jget objectArray] get 0]
        }
        next
        if {[expr {$eventListenerInterface ne [::NullEventListener::staticGet_NULL_EVENT_LISTENER]}]} {
            my addListenerInterface $eventListenerInterface
        }
    }
    
    

    method process {eventObject eventListenerInterface} {
        if {[expr {![my jget enabled]}]} {
            return
        }
        set gameNotificationListenerInterface $eventListenerInterface
        $gameNotificationListenerInterface onGameNotificationEvent $eventObject
    }
}

namespace eval ::GameNotificationEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameNotificationEventHandler new]
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
        return [::GameNotificationEventHandler::staticGet_instance]
    }
}


