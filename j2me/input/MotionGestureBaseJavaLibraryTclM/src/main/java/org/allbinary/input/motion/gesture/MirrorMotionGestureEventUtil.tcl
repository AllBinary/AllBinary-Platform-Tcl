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

oo::class create ::MirrorMotionGestureEventUtil {
    superclass ::JObject
}

oo::define ::MirrorMotionGestureEventUtil {
    method initFields_MirrorMotionGestureEventUtil {} {
        my jset motionEventCircularPool {}
        
        return
    }
    

    constructor {} {
        next
        my initFields_MirrorMotionGestureEventUtil
        my jset motionEventCircularPool [::MotionEventCircularPool::createPool [::Integer::staticGet_MAX_VALUE]]
    }
    

    method mirrorVerticle {motionGestureEvent halfWidth} {
        set event [[my jget motionEventCircularPool] getInstance [$motionGestureEvent getMotionGesture]]
        set previousNewX [my getNewX [[$motionGestureEvent getPreviousPoint] getX] $halfWidth]
        set currentNewX [my getNewX [[$motionGestureEvent getCurrentPoint] getX] $halfWidth]
        set pointFactory [::PointFactory::getInstance]
        set mirroredPreviousPoint [$pointFactory createXY $previousNewX [[$motionGestureEvent getPreviousPoint] getY]]
        set mirroredCurrentPoint [$pointFactory createXY $currentNewX [[$motionGestureEvent getCurrentPoint] getY]]
        $event setPreviousPoint $mirroredPreviousPoint
        $event setCurrentPoint $mirroredCurrentPoint
        return $event
    }
    

    method getNewX {x halfWidth} {
        set newX 0
        if {[expr {$x > $halfWidth}]} {
            set newX [jint [expr {$halfWidth - ([jint [expr {$x - $halfWidth}]])}]]
        } else {
            set newX [jint [expr {$halfWidth + ([jint [expr {$halfWidth - $x}]])}]]
        }
        return $newX
    }
    
}

namespace eval ::MirrorMotionGestureEventUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MirrorMotionGestureEventUtil new]
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
        return [::MirrorMotionGestureEventUtil::staticGet_instance]
    }
}


