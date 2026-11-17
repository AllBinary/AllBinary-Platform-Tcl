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

oo::class create ::DiagonalDownRightTouchInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::DiagonalDownRightTouchInputToGameKeyEventAction {
    method initFields_DiagonalDownRightTouchInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Diagonal Down Right Action" [[::TouchMotionGestureFactory::getInstance] jget DIAGONAL_DOWN_RIGHT] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_DiagonalDownRightTouchInputToGameKeyEventAction
    }
}

namespace eval ::DiagonalDownRightTouchInputToGameKeyEventAction {
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
        if {[expr {[::DiagonalDownRightTouchInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::DiagonalDownRightTouchInputToGameKeyEventAction::staticSet_instance [::DiagonalDownRightTouchInputToGameKeyEventAction new]
        }
        return [::DiagonalDownRightTouchInputToGameKeyEventAction::staticGet_instance]
    }
}


