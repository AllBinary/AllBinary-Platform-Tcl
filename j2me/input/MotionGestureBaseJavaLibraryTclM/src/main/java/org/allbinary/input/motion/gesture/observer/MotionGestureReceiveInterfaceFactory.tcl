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

oo::class create ::MotionGestureReceiveInterfaceFactory {
    superclass ::JObject
}

oo::define ::MotionGestureReceiveInterfaceFactory {
    method initFields_MotionGestureReceiveInterfaceFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_MotionGestureReceiveInterfaceFactory
    }
    
}

namespace eval ::MotionGestureReceiveInterfaceFactory {
    proc getInstance {} {
        set configuration [::MotionGestureConfigurationFactory::getInstance]
        if {[expr {![$configuration isExecutingActionsAllowed]}]} {
            return [::NullCompleteMotionGestureReceiver new]
        } else {
            return [::ResolveCompleteMotionGestureListener new]
        }
    }
}


