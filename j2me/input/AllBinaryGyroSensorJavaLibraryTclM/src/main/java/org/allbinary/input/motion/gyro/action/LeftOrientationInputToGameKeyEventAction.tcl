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
# package org.allbinary.input.motion.gyro.action

oo::class create ::LeftOrientationInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::LeftOrientationInputToGameKeyEventAction {
    method initFields_LeftOrientationInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Left Action" [[::OrientationMotionGestureFactory::getInstance] jget LEFT] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_LeftOrientationInputToGameKeyEventAction
    }
}

namespace eval ::LeftOrientationInputToGameKeyEventAction {
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
        if {[expr {[::LeftOrientationInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::LeftOrientationInputToGameKeyEventAction::staticSet_instance [::LeftOrientationInputToGameKeyEventAction new]
        }
        return [::LeftOrientationInputToGameKeyEventAction::staticGet_instance]
    }
}


