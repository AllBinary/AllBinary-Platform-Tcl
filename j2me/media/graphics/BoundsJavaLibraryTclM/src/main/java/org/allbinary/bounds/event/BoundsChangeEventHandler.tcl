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
# package org.allbinary.bounds.event

oo::class create ::BoundsChangeEventHandler {
    superclass ::BasicEventHandler
}

oo::define ::BoundsChangeEventHandler {
    method initFields_BoundsChangeEventHandler {} {
        return
    }
    

    constructor {} {
        next
        my initFields_BoundsChangeEventHandler
    }
    
    

    method process {eventObject eventListenerInterface} {
        set boundsChangeEventListener $eventListenerInterface
        $boundsChangeEventListener onBoundsChangeEvent $eventObject
    }
}

namespace eval ::BoundsChangeEventHandler {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::BoundsChangeEventHandler new]
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
        return [::BoundsChangeEventHandler::staticGet_SINGLETON]
    }
}


