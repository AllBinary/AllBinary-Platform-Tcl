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

oo::class create ::TrackballMotionGestureFactory {
    superclass ::JObject
}

oo::define ::TrackballMotionGestureFactory {
    method initFields_TrackballMotionGestureFactory {} {
        my jset LEFT {}
        my jset RIGHT {}
        my jset UP {}
        my jset DOWN {}
        
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_TrackballMotionGestureFactory
        set MAX [[::InputFactory::getInstance] jget MAX]
        my jset LEFT [::MotionGestureInput new [jint [expr {$MAX - 26}]] "L Trackball"]
        my jset RIGHT [::MotionGestureInput new [jint [expr {$MAX - 27}]] "R Trackball"]
        my jset UP [::MotionGestureInput new [jint [expr {$MAX - 28}]] "Up Trackball"]
        my jset DOWN [::MotionGestureInput new [jint [expr {$MAX - 29}]] "D Trackball"]
    }
}

namespace eval ::TrackballMotionGestureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::TrackballMotionGestureFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::TrackballMotionGestureFactory::staticSet_instance [::TrackballMotionGestureFactory new]
        }
        return [::TrackballMotionGestureFactory::staticGet_instance]
    }
}


