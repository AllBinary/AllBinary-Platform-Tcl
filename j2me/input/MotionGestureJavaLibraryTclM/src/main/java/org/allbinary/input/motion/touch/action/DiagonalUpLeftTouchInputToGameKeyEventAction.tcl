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

oo::class create ::DiagonalUpLeftTouchInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::DiagonalUpLeftTouchInputToGameKeyEventAction {
    method initFields_DiagonalUpLeftTouchInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Diagonal Up Left Action" [[::TouchMotionGestureFactory::getInstance] jget DIAGONAL_UP_LEFT] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_DiagonalUpLeftTouchInputToGameKeyEventAction
    }
}

namespace eval ::DiagonalUpLeftTouchInputToGameKeyEventAction {
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
        if {[expr {[::DiagonalUpLeftTouchInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::DiagonalUpLeftTouchInputToGameKeyEventAction::staticSet_instance [::DiagonalUpLeftTouchInputToGameKeyEventAction new]
        }
        return [::DiagonalUpLeftTouchInputToGameKeyEventAction::staticGet_instance]
    }
}


