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

oo::class create ::GestureOnlyMotionRecognizer {
    superclass ::MotionRecognizer
}

oo::define ::GestureOnlyMotionRecognizer {
    method initFields_GestureOnlyMotionRecognizer {} {
        my jset motionGestureRecognizer {}
        my jset id 0
        
        
        return
    }
    

    constructor {} {
        next
        my initFields_GestureOnlyMotionRecognizer
        my jset id [GestureOnlyMotionRecognizer jpostinc index 1]
        my jset motionGestureRecognizer [::MotionGestureRecognizer new [my jget id]]
    }
    

    method processStartMotionEvent {x y deviceId modifiers} {
        set point [[::GestureOnlyMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
        $point setX $x
        $point setY $y
        [my jget motionGestureRecognizer] processPressedMotionEvent $point $deviceId $modifiers
    }
    

    method processEndMotionEvent {x y deviceId modifiers} {
        set point [[::GestureOnlyMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
        $point setX $x
        $point setY $y
        [my jget motionGestureRecognizer] processReleasedMotionEvent $point $deviceId $modifiers
    }
    

    method processDraggedMotionEvent {x y deviceId modifiers} {
        set point [[::GestureOnlyMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
        $point setX $x
        $point setY $y
        [my jget motionGestureRecognizer] processDraggedMotionEvent $point $deviceId $modifiers
    }
}

namespace eval ::GestureOnlyMotionRecognizer {
    variable indexValue {}
    variable indexSet 0
    proc staticGet_index {} {
        variable indexValue
        variable indexSet
        if {!$indexSet} {
            set indexSet 1
            set indexValue 0
        }
        return $indexValue
    }
    proc staticSet_index {value} {
        variable indexValue
        variable indexSet
        set indexSet 1
        set indexValue $value
    }
    variable pointCircularPoolValue {}
    variable pointCircularPoolSet 0
    proc staticGet_pointCircularPool {} {
        variable pointCircularPoolValue
        variable pointCircularPoolSet
        if {!$pointCircularPoolSet} {
            set pointCircularPoolSet 1
            set pointCircularPoolValue [::GPointCircularPool new 40]
        }
        return $pointCircularPoolValue
    }
    proc staticSet_pointCircularPool {value} {
        variable pointCircularPoolValue
        variable pointCircularPoolSet
        set pointCircularPoolSet 1
        set pointCircularPoolValue $value
    }
}


