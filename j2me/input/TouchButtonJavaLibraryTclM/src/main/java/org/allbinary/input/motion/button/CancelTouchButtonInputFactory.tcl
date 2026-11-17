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
# package org.allbinary.input.motion.button

oo::class create ::CancelTouchButtonInputFactory {
    superclass ::JObject
}

oo::define ::CancelTouchButtonInputFactory {
    method initFields_CancelTouchButtonInputFactory {} {
        my jset cancelInputArray {}
        my jset cancelInputArray [jarray [[::InputFactory::getInstance] jget MAX] {}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_CancelTouchButtonInputFactory
        set basicTouchInputFactory [::BasicTouchInputFactory::getInstance]
        for {set index [jint [expr {[[my jget cancelInputArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget cancelInputArray] set $index [$basicTouchInputFactory jget NONE]
        }
        [my jget cancelInputArray] set [[$basicTouchInputFactory jget UP] getSourceId] [$basicTouchInputFactory jget DOWN]
        [my jget cancelInputArray] set [[$basicTouchInputFactory jget DOWN] getSourceId] [$basicTouchInputFactory jget UP]
        [my jget cancelInputArray] set [[$basicTouchInputFactory jget LEFT] getSourceId] [$basicTouchInputFactory jget RIGHT]
        [my jget cancelInputArray] set [[$basicTouchInputFactory jget RIGHT] getSourceId] [$basicTouchInputFactory jget LEFT]
    }
    

    method getCancel {touchButtonInput} {
        return [[my jget cancelInputArray] get [$touchButtonInput getSourceId]]
    }
}

namespace eval ::CancelTouchButtonInputFactory {
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
        if {[expr {[::CancelTouchButtonInputFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::CancelTouchButtonInputFactory::staticSet_instance [::CancelTouchButtonInputFactory new]
        }
        return [::CancelTouchButtonInputFactory::staticGet_instance]
    }
}


