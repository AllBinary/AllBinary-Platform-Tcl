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
# package org.allbinary.game.tracking

oo::class create ::TrackingEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::TrackingEventHandler {
    method initFields_TrackingEventHandler {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_TrackingEventHandler
    }
    

    method process {eventObject eventListenerInterface} {
        set trackingEventListenerInterface $eventListenerInterface
        $trackingEventListenerInterface onMovement $eventObject
    }
}

namespace eval ::TrackingEventHandler {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TrackingEventHandler new]
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
        return [::TrackingEventHandler::staticGet_instance]
    }
}


