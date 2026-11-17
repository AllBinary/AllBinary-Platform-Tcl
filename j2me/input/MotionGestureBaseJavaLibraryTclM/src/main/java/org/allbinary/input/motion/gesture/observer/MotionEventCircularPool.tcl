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

oo::class create ::MotionEventCircularPool {
    superclass ::JObject
}

oo::define ::MotionEventCircularPool {
    method initFields_MotionEventCircularPool {} {
        my jset MIN 0
        my jset eventPool {}
        my jset MIN [[[::TouchMotionGestureFactory::getInstance] jget LAST_MOTION] getId]
        my jset eventPool [::AllBinaryEventCircularPool new [expr {([expr {[[::InputFactory::getInstance] jget MAX] - 1}]) - [my jget MIN]}]]
        return
    }
    
    

    constructor {id} {
        next
        my initFields_MotionEventCircularPool
        [my jget eventPool] initAllBinaryEventCircularPool [::MotionEventFactory new [my jget eventPool] $id]
    }
    

    method getInstance {motionGestureInput} {
        return [[my jget eventPool] getInstance [expr {[$motionGestureInput getId] - [my jget MIN]}]]
    }
}

namespace eval ::MotionEventCircularPool {
    proc createPool {id} {
        return [::MotionEventCircularPool new $id]
    }
}


