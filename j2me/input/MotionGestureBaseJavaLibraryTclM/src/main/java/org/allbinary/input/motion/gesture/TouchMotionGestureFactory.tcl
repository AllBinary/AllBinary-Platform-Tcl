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

oo::class create ::TouchMotionGestureFactory {
    superclass ::JObject
}

oo::define ::TouchMotionGestureFactory {
    method initFields_TouchMotionGestureFactory {} {
        my jset LEFT {}
        my jset RIGHT {}
        my jset UP {}
        my jset DOWN {}
        my jset PRESSED {}
        my jset RELEASED {}
        my jset DIAGONAL_DOWN_RIGHT {}
        my jset DIAGONAL_DOWN_LEFT {}
        my jset DIAGONAL_UP_RIGHT {}
        my jset DIAGONAL_UP_LEFT {}
        my jset SCROLL_UP {}
        my jset SCROLL_DOWN {}
        my jset NO_MOTION {}
        my jset LAST_MOTION {}
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        return
    }
    
    

    constructor {} {
        next
        my initFields_TouchMotionGestureFactory
        set MAX [[::InputFactory::getInstance] jget MAX]
        my jset LEFT [::MotionGestureInput new [jint [expr {$MAX - 3}]] "Left Touch"]
        my jset RIGHT [::MotionGestureInput new [jint [expr {$MAX - 4}]] "Right Touch"]
        my jset UP [::MotionGestureInput new [jint [expr {$MAX - 5}]] "Up Touch"]
        my jset DOWN [::MotionGestureInput new [jint [expr {$MAX - 6}]] "Down Touch"]
        my jset PRESSED [::MotionGestureInput new [jint [expr {$MAX - 7}]] "Screen Press"]
        my jset RELEASED [::MotionGestureInput new [jint [expr {$MAX - 8}]] "Released"]
        my jset DIAGONAL_DOWN_RIGHT [::MotionGestureInput new [jint [expr {$MAX - 9}]] "Diagonal Dn R"]
        my jset DIAGONAL_DOWN_LEFT [::MotionGestureInput new [jint [expr {$MAX - 10}]] "Diagonal Dn L"]
        my jset DIAGONAL_UP_RIGHT [::MotionGestureInput new [jint [expr {$MAX - 11}]] "Diagonal Up R"]
        my jset DIAGONAL_UP_LEFT [::MotionGestureInput new [jint [expr {$MAX - 12}]] "Diagonal Up L"]
        my jset SCROLL_UP [::MotionGestureInput new [jint [expr {$MAX - 13}]] "Scroll Up"]
        my jset SCROLL_DOWN [::MotionGestureInput new [jint [expr {$MAX - 14}]] "Scroll Down"]
        my jset NO_MOTION [::MotionGestureInput new [jint [expr {$MAX - 2}]] "No Motion"]
        my jset LAST_MOTION [::MotionGestureInput new [jint [expr {$MAX - 19}]] "Last Motion"]
    }
}

namespace eval ::TouchMotionGestureFactory {
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
        if {[expr {[::TouchMotionGestureFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::TouchMotionGestureFactory::staticSet_instance [::TouchMotionGestureFactory new]
        }
        return [::TouchMotionGestureFactory::staticGet_instance]
    }
}


