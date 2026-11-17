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
# package org.allbinary.input.motion.touch.action

oo::class create ::ReleaseTouchInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::ReleaseTouchInputToGameKeyEventAction {
    method initFields_ReleaseTouchInputToGameKeyEventAction {} {
        my jset NONE {}
        my jset NONE [[::GameKeyFactory::getInstance] jget NONE]
        return
    }
    
    

    constructor {} {
        next "Release Action" [[::TouchMotionGestureFactory::getInstance] jget RELEASED] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_ReleaseTouchInputToGameKeyEventAction
        try {
            my setGameKey [my jget NONE]
            my setGameKeyEvent [[::GameKeyEventFactory::getInstance] getInstanceForInput [self] [my jget NONE]]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget CONSTRUCTOR] $e
        }
    }
    

    method update {} {
    }
}

namespace eval ::ReleaseTouchInputToGameKeyEventAction {
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
        if {[expr {[::ReleaseTouchInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::ReleaseTouchInputToGameKeyEventAction::staticSet_instance [::ReleaseTouchInputToGameKeyEventAction new]
        }
        return [::ReleaseTouchInputToGameKeyEventAction::staticGet_instance]
    }
}


