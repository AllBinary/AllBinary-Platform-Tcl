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
# package org.allbinary.input.motion.gesture.observer

oo::class create ::BasicMotionGesturesHandler {
    superclass ::BasicEventHandler
}

oo::define ::BasicMotionGesturesHandler {
    method initFields_BasicMotionGesturesHandler {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_BasicMotionGesturesHandler
    }
    

    method process {eventObject eventListenerInterface} {
        set baseMotionGestureEventListener $eventListenerInterface
        $baseMotionGestureEventListener onMotionGestureEvent $eventObject
    }
}

namespace eval ::BasicMotionGesturesHandler {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::BasicMotionGesturesHandler new]
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
        return [::BasicMotionGesturesHandler::staticGet_SINGLETON]
    }
}


