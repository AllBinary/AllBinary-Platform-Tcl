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

oo::class create ::RollRightOrientationInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::RollRightOrientationInputToGameKeyEventAction {
    method initFields_RollRightOrientationInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Roll Right Action" [[::OrientationMotionGestureFactory::getInstance] jget ROLL_RIGHT] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_RollRightOrientationInputToGameKeyEventAction
    }
}

namespace eval ::RollRightOrientationInputToGameKeyEventAction {
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
        if {[expr {[::RollRightOrientationInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::RollRightOrientationInputToGameKeyEventAction::staticSet_instance [::RollRightOrientationInputToGameKeyEventAction new]
        }
        return [::RollRightOrientationInputToGameKeyEventAction::staticGet_instance]
    }
}


