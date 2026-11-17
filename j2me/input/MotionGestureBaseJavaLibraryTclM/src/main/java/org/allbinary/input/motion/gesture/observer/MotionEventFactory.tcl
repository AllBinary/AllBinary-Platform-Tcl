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

oo::class create ::MotionEventFactory {
    superclass ::JObject
}

oo::define ::MotionEventFactory {
    method initFields_MotionEventFactory {} {
        my jset source {}
        my jset id 0
        
        
        return
    }
    

    constructor {source id} {
        next
        my initFields_MotionEventFactory
        my jset source $source
        my jset id $id
        ::MotionEventFactory::staticSet_index [[[::TouchMotionGestureFactory::getInstance] jget LAST_MOTION] getId]
    }
    

    method getInstance {} {
        set inputFactory [::InputFactory::getInstance]
        set input [$inputFactory getInstanceById [MotionEventFactory jpostinc index 1]]
        if {[expr {$input eq [$inputFactory jget NO_INPUT]}]} {
            return [::MotionGestureEvent new [my jget source] [my jget id] [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]]
        } else {
            return [::MotionGestureEvent new [my jget source] [my jget id] $input]
        }
    }
}

namespace eval ::MotionEventFactory {
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
}


