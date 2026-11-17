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
# package org.allbinary.input.gyro

oo::class create ::OrientationMotionGestureFactory {
    superclass ::JObject
}

oo::define ::OrientationMotionGestureFactory {
    method initFields_OrientationMotionGestureFactory {} {
        my jset LEFT {}
        my jset RIGHT {}
        my jset UP {}
        my jset DOWN {}
        my jset ROLL_LEFT {}
        my jset ROLL_RIGHT {}
        
        
        
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_OrientationMotionGestureFactory
        set MAX [[::InputFactory::getInstance] jget MAX]
        my jset LEFT [::MotionGestureInput new [jint [expr {$MAX - 20}]] "Left Orient"]
        my jset RIGHT [::MotionGestureInput new [jint [expr {$MAX - 21}]] "Right Orient"]
        my jset UP [::MotionGestureInput new [jint [expr {$MAX - 22}]] "Up Orient"]
        my jset DOWN [::MotionGestureInput new [jint [expr {$MAX - 23}]] "Down Orient"]
        my jset ROLL_LEFT [::MotionGestureInput new [jint [expr {$MAX - 24}]] "Roll Left"]
        my jset ROLL_RIGHT [::MotionGestureInput new [jint [expr {$MAX - 25}]] "Roll Right"]
    }
}

namespace eval ::OrientationMotionGestureFactory {
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
        if {[expr {[::OrientationMotionGestureFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::OrientationMotionGestureFactory::staticSet_instance [::OrientationMotionGestureFactory new]
        }
        return [::OrientationMotionGestureFactory::staticGet_instance]
    }
}


