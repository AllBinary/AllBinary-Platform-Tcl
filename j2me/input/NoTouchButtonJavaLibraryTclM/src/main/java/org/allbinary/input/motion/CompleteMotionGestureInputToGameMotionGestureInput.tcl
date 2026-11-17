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
# package org.allbinary.input.motion

oo::class create ::CompleteMotionGestureInputToGameMotionGestureInput {
    superclass ::JObject
}

oo::define ::CompleteMotionGestureInputToGameMotionGestureInput {
    method initFields_CompleteMotionGestureInputToGameMotionGestureInput {} {
        my jset commonStrings {}
        my jset commonStrings [::CommonStrings::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_CompleteMotionGestureInputToGameMotionGestureInput
    }
    
    

    method init {} {
        ::PreLogUtil::put "No Touch Button = No Compound Motion Gestures" [self] [[my jget commonStrings] jget INIT]
    }
}

namespace eval ::CompleteMotionGestureInputToGameMotionGestureInput {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::CompleteMotionGestureInputToGameMotionGestureInput new]
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
        return [::CompleteMotionGestureInputToGameMotionGestureInput::staticGet_instance]
    }
}


