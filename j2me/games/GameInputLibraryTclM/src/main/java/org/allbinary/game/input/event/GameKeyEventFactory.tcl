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
# package org.allbinary.game.input.event

oo::class create ::GameKeyEventFactory {
    superclass ::JObject
}

oo::define ::GameKeyEventFactory {
    method initFields_GameKeyEventFactory {} {
        my jset logUtil {}
        my jset TOUCH_BUTTON_SOURCE_ID 0
        my jset MOTION_GESTURE_SOURCE_ID 0
        my jset MAX_SOURCES 0
        my jset ARRAY {}
        my jset logUtil [::LogUtil::getInstance]
        my jset TOUCH_BUTTON_SOURCE_ID 2
        my jset MOTION_GESTURE_SOURCE_ID 3
        my jset MAX_SOURCES 4
        my jset ARRAY [jarrayof [my jget MAX_SOURCES] {jarray [[::InputFactory::getInstance] jget MAX] {}}]
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameKeyEventFactory
    }
    

    method init {} {
        set nullUtil [::NullUtil::getInstance]
        set size [[::InputFactory::getInstance] jget MAX]
        for {set index [my jget MAX_SOURCES]} {[expr {[jpreincr index -1] >= 0}]} {} {
            for {set index2 $size} {[expr {[jpreincr index2 -1] >= 0}]} {} {
                [[my jget ARRAY] get $index] set $index2 [::GameKeyEvent::createEvent [$nullUtil jget NULL_OBJECT] $index $index2]
            }
        }
    }
    

    method getInstanceForKey {anyType key} {
        set gameKeyEvent [[[my jget ARRAY] get [$anyType getSourceId]] get $key]
        return $gameKeyEvent
    }
    

    method getInstanceForInput {anyType input} {
        set gameKeyEvent [[[my jget ARRAY] get [$anyType getSourceId]] get [$input getId]]
        return $gameKeyEvent
    }
}

namespace eval ::GameKeyEventFactory {
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
        if {[expr {[::GameKeyEventFactory::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::GameKeyEventFactory::staticSet_instance [::GameKeyEventFactory new]
        }
        return [::GameKeyEventFactory::staticGet_instance]
    }
}


