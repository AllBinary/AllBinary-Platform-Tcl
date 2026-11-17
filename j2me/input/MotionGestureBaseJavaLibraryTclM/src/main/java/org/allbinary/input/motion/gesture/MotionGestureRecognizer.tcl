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

oo::class create ::MotionGestureRecognizer {
    superclass ::JObject
}

oo::define ::MotionGestureRecognizer {
    method initFields_MotionGestureRecognizer {} {
        my jset logUtil {}
        my jset j2seMath {}
        my jset origin {}
        my jset previous {}
        my jset intermediate {}
        my jset line {}
        my jset motionGesturesHandler {}
        my jset movedMotionGesturesHandler {}
        my jset scrolledMotionGesturesHandler {}
        my jset motionEventCircularPool {}
        my jset logUtil [::LogUtil::getInstance]
        my jset j2seMath [::J2SEMath::getInstance]
        my jset origin [[::PointFactory::getInstance] jget ZERO_ZERO]
        my jset previous [my jget origin]
        my jset intermediate [my jget origin]
        my jset line [::Line new [my jget origin] [my jget origin]]
        
        
        
        
        return
    }
    

    constructor {id} {
        next
        my initFields_MotionGestureRecognizer
        my jset motionEventCircularPool [::MotionEventCircularPool::createPool $id]
        set motionGesturesHandler [::BasicEventHandler new]
        set movedMotionGesturesHandler $motionGesturesHandler
        set scrolledMotionGesturesHandler $motionGesturesHandler
        try {
            set motionGesturesHandler [::BasicMotionGesturesHandler::getInstance]
            set movedMotionGesturesHandler [::MovedMotionGesturesHandler::getInstance]
            set scrolledMotionGesturesHandler [::ScrolledMotionGesturesHandler::getInstance]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
        my jset motionGesturesHandler $motionGesturesHandler
        my jset movedMotionGesturesHandler $movedMotionGesturesHandler
        my jset scrolledMotionGesturesHandler $scrolledMotionGesturesHandler
    }
    

    method processPressedMotionEvent {current deviceId button} {
        my jset intermediate [my jget origin]
        my jset previous [my jget origin]
        set event [[my jget motionEventCircularPool] getInstance [[::TouchMotionGestureFactory::getInstance] jget PRESSED]]
        $event setPreviousPoint [my jget previous]
        $event setCurrentPoint $current
        [my jget motionGesturesHandler] fireEvent $event
        return true
    }
    

    method processReleasedMotionEvent {current deviceId button} {
        set event [[my jget motionEventCircularPool] getInstance [[::TouchMotionGestureFactory::getInstance] jget RELEASED]]
        $event setPreviousPoint [my jget previous]
        $event setCurrentPoint $current
        [my jget motionGesturesHandler] fireEvent $event
        return true
    }
    

    method processDraggedMotionEvent {current deviceId buttonMask} {
        if {[expr {[expr {[my jget previous] eq [my jget origin]}] || [expr {[my jget intermediate] eq [my jget origin]}]}]} {
            my jset previous $current
            my jset intermediate $current
            return
        }
        [my jget line] setP1 [my jget previous]
        [my jget line] setP2 $current
        set minimumMotionGesture [[::MotionGestureConfigurationFactory::getInstance] getMinimumMotionGesture]
        if {[expr {[expr {[[my jget j2seMath] abs [expr {double([[my jget line] getDeltaX])}]] < $minimumMotionGesture}] && [expr {[[my jget j2seMath] abs [expr {double([[my jget line] getDeltaY])}]] < $minimumMotionGesture}]}]} {
            my jset intermediate $current
            return
        }
        set gradient [[my jget line] getGradient]
        set absGradient [expr {double([[my jget j2seMath] abs [expr {double($gradient)}]])}]
        set conf [::MotionGestureConfigurationFactory::getInstance]
        set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
        set newMotionGesture [$touchMotionGestureFactory jget NO_MOTION]
        set diagonalToleranceHigher 12.0
        set diagonalToleranceLower 12.0
        if {[$conf isDiagonalMotionGestureAllowed]} {
            set diagonalToleranceHigher [expr {double(([expr {90 - [$conf getDiagonalTolerance]}]))}]
            set diagonalToleranceLower [expr {double([$conf getDiagonalTolerance])}]
        }
        if {[expr {$absGradient > [expr {tan([expr {toRadians($diagonalToleranceHigher)}])}]}]} {
            if {[expr {[[my jget line] getDeltaY] > 0}]} {
                set newMotionGesture [$touchMotionGestureFactory jget UP]
            } else {
                set newMotionGesture [$touchMotionGestureFactory jget DOWN]
            }
        } else {
            if {[expr {$absGradient < [expr {tan([expr {toRadians($diagonalToleranceLower)}])}]}]} {
                if {[expr {[[my jget line] getDeltaX] > 0}]} {
                    set newMotionGesture [$touchMotionGestureFactory jget LEFT]
                } else {
                    set newMotionGesture [$touchMotionGestureFactory jget RIGHT]
                }
            } else {
                if {[expr {$gradient > 0.0}]} {
                    if {[expr {[[my jget line] getDeltaX] > 0}]} {
                        set newMotionGesture [$touchMotionGestureFactory jget DIAGONAL_UP_LEFT]
                    } else {
                        set newMotionGesture [$touchMotionGestureFactory jget DIAGONAL_DOWN_RIGHT]
                    }
                } else {
                    if {[expr {[[my jget line] getDeltaX] > 0}]} {
                        set newMotionGesture [$touchMotionGestureFactory jget DIAGONAL_DOWN_LEFT]
                    } else {
                        set newMotionGesture [$touchMotionGestureFactory jget DIAGONAL_UP_RIGHT]
                    }
                }
            }
        }
        my jset previous $current
        my jset intermediate $current
        set event [[my jget motionEventCircularPool] getInstance $newMotionGesture]
        $event setPreviousPoint [my jget previous]
        $event setCurrentPoint $current
        [my jget motionGesturesHandler] fireEvent $event
        return
    }
    

    method processMovedMotionEvent {current deviceId button} {
        set event [[my jget motionEventCircularPool] getInstance [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]]
        $event setPreviousPoint [my jget previous]
        $event setCurrentPoint $current
        [my jget movedMotionGesturesHandler] fireEvent $event
        return true
    }
    

    method processScrolledMotionEvent {current deviceId button} {
        set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
        set newMotionGesture [$touchMotionGestureFactory jget NO_MOTION]
        if {[expr {$button > 0}]} {
            set newMotionGesture [$touchMotionGestureFactory jget SCROLL_UP]
        } elseif {[expr {$button < 0}]} {
            set newMotionGesture [$touchMotionGestureFactory jget SCROLL_DOWN]
        }
        set event [[my jget motionEventCircularPool] getInstance $newMotionGesture]
        $event setPreviousPoint [my jget previous]
        $event setCurrentPoint $current
        [my jget scrolledMotionGesturesHandler] fireEvent $event
        return true
    }
    

    method getMotionGesturesHandler {} {
        return [my jget motionGesturesHandler]
    }
}

namespace eval ::MotionGestureRecognizer {
}


