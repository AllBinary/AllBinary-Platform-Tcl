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

oo::class create ::OnlyTouchButtonRecognizer {
    superclass ::MotionRecognizer
}

oo::define ::OnlyTouchButtonRecognizer {
    method initFields_OnlyTouchButtonRecognizer {} {
        my jset touchButtonRecognizer {}
        my jset touchButtonProcessing false
        
        my jset touchButtonProcessing false
        return
    }
    

    constructor {} {
        next
        my initFields_OnlyTouchButtonRecognizer
        my jset touchButtonRecognizer [::TouchButtonRecognizer new]
    }
    

    method processStartMotionEvent {x y deviceId modifiers} {
        if {[[my jget touchButtonRecognizer] pressTouchButtonInput $x $y $deviceId]} {
            my jset touchButtonProcessing true
        }
    }
    

    method processEndMotionEvent {x y deviceId modifiers} {
        if {[my jget touchButtonProcessing]} {
            my jset touchButtonProcessing false
        }
        if {[[my jget touchButtonRecognizer] releaseTouchButtonInput $x $y $deviceId]} {
            return
        }
    }
    

    method processDraggedMotionEvent {x y deviceId modifiers} {
        if {[my jget touchButtonProcessing]} {
            [my jget touchButtonRecognizer] pressTouchButtonInput $x $y $deviceId
        }
    }
}

namespace eval ::OnlyTouchButtonRecognizer {
}


