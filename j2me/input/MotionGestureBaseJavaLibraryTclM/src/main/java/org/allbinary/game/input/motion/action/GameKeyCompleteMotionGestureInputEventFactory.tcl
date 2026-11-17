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
# package org.allbinary.game.input.motion.action

oo::class create ::GameKeyCompleteMotionGestureInputEventFactory {
    superclass ::JObject
}

oo::define ::GameKeyCompleteMotionGestureInputEventFactory {
    method initFields_GameKeyCompleteMotionGestureInputEventFactory {} {
        my jset logUtil {}
        my jset eventList {}
        my jset logUtil [::LogUtil::getInstance]
        my jset eventList [::BasicArrayListD new]
        return
    }

    constructor {} {
        next
        my initFields_GameKeyCompleteMotionGestureInputEventFactory
    }
    
    

    method add {gameKeyCompleteMotionGestureInputEvent} {
        [my jget eventList] add $gameKeyCompleteMotionGestureInputEvent
    }
    

    method updateAll {} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] appendint [[my jget eventList] size]] toString] [self] "updateAll"
        for {set index [jint [expr {[[my jget eventList] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set gameKeyCompleteMotionGestureInputEvent [[[my jget eventList] jget objectArray] get $index]
            $gameKeyCompleteMotionGestureInputEvent update
        }
    }
}

namespace eval ::GameKeyCompleteMotionGestureInputEventFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::GameKeyCompleteMotionGestureInputEventFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::GameKeyCompleteMotionGestureInputEventFactory::staticGet_SINGLETON]
    }
}


