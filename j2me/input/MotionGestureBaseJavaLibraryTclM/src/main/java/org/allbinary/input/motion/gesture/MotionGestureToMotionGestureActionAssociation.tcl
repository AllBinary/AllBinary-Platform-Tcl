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
# package org.allbinary.input.motion.gesture

oo::class create ::MotionGestureToMotionGestureActionAssociation {
    superclass ::JObject
}

oo::define ::MotionGestureToMotionGestureActionAssociation {
    method initFields_MotionGestureToMotionGestureActionAssociation {} {
        my jset list {}
        my jset motionGestureAction {}
        
        
        return
    }
    

    constructor {list commandAction} {
        next
        my initFields_MotionGestureToMotionGestureActionAssociation
        my jset list $list
        my jset motionGestureAction $commandAction
    }
    

    method getMotionGesture {} {
        return [my jget list]
    }
    

    method setMotionGestures {list} {
        my jset list $list
    }
    

    method getCommandAction {} {
        return [my jget motionGestureAction]
    }
    

    method setMotionGestureAction {commandAction} {
        my jset motionGestureAction $commandAction
    }
    

    method isMotionGestureArrayEquals {aList} {
        set size [$aList size]
        if {[expr {[[my jget list] size] != $size}]} {
            return false
        }
        for {set i [jint [expr {$size - 1}]]} {[expr {$i >= 0}]} {jpostincr i -1} {
            if {[expr {[[$aList jget objectArray] get $i] != [[[my jget list] jget objectArray] get $i]}]} {
                return false
            }
        }
        return true
    }
}

namespace eval ::MotionGestureToMotionGestureActionAssociation {
}


