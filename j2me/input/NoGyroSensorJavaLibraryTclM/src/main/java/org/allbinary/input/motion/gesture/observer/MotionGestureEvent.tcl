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

oo::class create ::MotionGestureEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::MotionGestureEvent {
    method initFields_MotionGestureEvent {} {
        my jset motionGesture {}
        my jset id 0
        my jset previousPoint {}
        my jset currentPoint {}
        my jset commonLabels {}
        my jset motionGesture [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]
        
        my jset previousPoint [[::PointFactory::getInstance] jget ZERO_ZERO]
        my jset currentPoint [[::PointFactory::getInstance] jget ZERO_ZERO]
        my jset commonLabels [::CommonLabels::getInstance]
        return
    }
    

    constructor {source id motionGesture} {
        next $source
        my initFields_MotionGestureEvent
        my jset id $id
        my setMotionGesture $motionGesture
    }
    

    method getMotionGesture {} {
        return [my jget motionGesture]
    }
    

    method setMotionGesture {motionGesture} {
        my jset motionGesture $motionGesture
    }
    

    method getPreviousPoint {} {
        return [my jget previousPoint]
    }
    

    method setPreviousPoint {previousPoint} {
        my jset previousPoint $previousPoint
    }
    

    method getCurrentPoint {} {
        return [my jget currentPoint]
    }
    

    method setCurrentPoint {currentPoint} {
        my jset currentPoint $currentPoint
    }
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        set stringUtil [::StringUtil::getInstance]
        $stringBuffer append [$stringUtil toString1 [my jget motionGesture]]
        $stringBuffer append [[my jget commonLabels] jget CURRENT]
        $stringBuffer append [$stringUtil toString1 [my jget currentPoint]]
        $stringBuffer append [::MotionGestureEvent::staticGet_PREVIOUS]
        $stringBuffer append [$stringUtil toString1 [my jget previousPoint]]
        $stringBuffer append [::MotionGestureEvent::staticGet_HASHCODE]
        $stringBuffer appendint [jint [[::TsUtil::getInstance] hashCode1 [self]]]
        return [$stringBuffer toString]
    }
    

    method getId {} {
        return [my jget id]
    }
}

namespace eval ::MotionGestureEvent {
    variable PREVIOUSValue {}
    variable PREVIOUSSet 0
    proc staticGet_PREVIOUS {} {
        variable PREVIOUSValue
        variable PREVIOUSSet
        if {!$PREVIOUSSet} {
            set PREVIOUSSet 1
            set PREVIOUSValue " Previous: "
        }
        return $PREVIOUSValue
    }
    proc staticSet_PREVIOUS {value} {
        variable PREVIOUSValue
        variable PREVIOUSSet
        set PREVIOUSSet 1
        set PREVIOUSValue $value
    }
    variable HASHCODEValue {}
    variable HASHCODESet 0
    proc staticGet_HASHCODE {} {
        variable HASHCODEValue
        variable HASHCODESet
        if {!$HASHCODESet} {
            set HASHCODESet 1
            set HASHCODEValue " hashcode: "
        }
        return $HASHCODEValue
    }
    proc staticSet_HASHCODE {value} {
        variable HASHCODEValue
        variable HASHCODESet
        set HASHCODESet 1
        set HASHCODEValue $value
    }
}


