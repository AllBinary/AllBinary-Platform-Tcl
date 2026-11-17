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

oo::class create ::AllMotionRecognizer {
    superclass ::MotionRecognizer
}

oo::define ::AllMotionRecognizer {
    method initFields_AllMotionRecognizer {} {
        my jset logUtil {}
        my jset motionGestureRecognizer {}
        my jset touchButtonProcessing false
        my jset touchButtonRecognizer {}
        my jset id 0
        my jset lastX 0
        my jset lastY 0
        my jset logUtil [::LogUtil::getInstance]
        
        my jset touchButtonProcessing false
        
        
        my jset lastX 0
        my jset lastY 0
        return
    }
    

    constructor {} {
        next
        my initFields_AllMotionRecognizer
        my jset id [AllMotionRecognizer jpostinc index 1]
        my jset motionGestureRecognizer [::MotionGestureRecognizer new [my jget id]]
        my jset touchButtonRecognizer [::TouchButtonRecognizer new]
    }
    

    method processStartMotionEvent {x y deviceId modifiers} {
        if {[[my jget touchButtonRecognizer] pressTouchButtonInput $x $y $deviceId]} {
            my jset touchButtonProcessing true
        }
        if {[expr {![my jget touchButtonProcessing]}]} {
            set point [[::AllMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
            $point setX $x
            $point setY $y
            [my jget motionGestureRecognizer] processPressedMotionEvent $point $deviceId $modifiers
        }
    }
    

    method processEndMotionEvent {x y deviceId modifiers} {
        if {[[my jget touchButtonRecognizer] releaseTouchButtonInput $x $y $deviceId]} {
        }
        if {[expr {![my jget touchButtonProcessing]}]} {
            set point [[::AllMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
            $point setX $x
            $point setY $y
            [my jget motionGestureRecognizer] processReleasedMotionEvent $point $deviceId $modifiers
        }
        if {[my jget touchButtonProcessing]} {
            my jset touchButtonProcessing false
        }
    }
    

    method processDraggedMotionEvent {x y deviceId modifiers} {
        if {[my jget touchButtonProcessing]} {
            [my jget touchButtonRecognizer] pressTouchButtonInput $x $y $deviceId
        }
        if {[expr {![my jget touchButtonProcessing]}]} {
            set point [[::AllMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
            $point setX $x
            $point setY $y
            [my jget motionGestureRecognizer] processDraggedMotionEvent $point $deviceId $modifiers
        }
    }
    

    method processMovedMotionEvent {x y deviceId modifiers} {
        if {[expr {[expr {$x != [my jget lastX]}] || [expr {$y != [my jget lastY]}]}]} {
            my jset lastX $x
            my jset lastY $y
            set point [[::AllMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
            $point setX $x
            $point setY $y
            [my jget motionGestureRecognizer] processMovedMotionEvent $point $deviceId $modifiers
        }
    }
    

    method processScrolledMotionEvent {x y deviceId modifiers} {
        set point [[::AllMotionRecognizer::staticGet_pointCircularPool] getNextInstance]
        $point setX $x
        $point setY $y
        [my jget motionGestureRecognizer] processScrolledMotionEvent $point $deviceId $modifiers
    }
    

    method getMotionGestureRecognizer {} {
        return [my jget motionGestureRecognizer]
    }
}

namespace eval ::AllMotionRecognizer {
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


