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
    superclass ::JObject
}

oo::define ::AllMotionRecognizer {
    method initFields_AllMotionRecognizer {} {
        my jset id 0
        
        return
    }
    

    constructor {} {
        next
        my initFields_AllMotionRecognizer
        my jset id [AllMotionRecognizer jpostinc index 1]
    }
    

    method processStartMotionEvent {x y deviceId modifiers} {
    }
    

    method processEndMotionEvent {x y deviceId modifiers} {
    }
    

    method processDraggedMotionEvent {x y deviceId modifiers} {
    }
    

    method processMovedMotionEvent {x y deviceId modifiers} {
    }
    

    method processScrolledMotionEvent {x y deviceId modifiers} {
    }
    

    method getId {} {
        return [my jget id]
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
}


