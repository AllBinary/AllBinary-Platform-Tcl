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
# package org.allbinary.input.motion.trackball.action

oo::class create ::RightTrackballInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::RightTrackballInputToGameKeyEventAction {
    method initFields_RightTrackballInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Right Action" [[::TrackballMotionGestureFactory::getInstance] jget RIGHT] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_RightTrackballInputToGameKeyEventAction
    }
}

namespace eval ::RightTrackballInputToGameKeyEventAction {
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
        if {[expr {[::RightTrackballInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::RightTrackballInputToGameKeyEventAction::staticSet_instance [::RightTrackballInputToGameKeyEventAction new]
        }
        return [::RightTrackballInputToGameKeyEventAction::staticGet_instance]
    }
}


