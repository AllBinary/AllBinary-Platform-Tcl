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

oo::class create ::LeftTrackballInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::LeftTrackballInputToGameKeyEventAction {
    method initFields_LeftTrackballInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Left Action" [[::TrackballMotionGestureFactory::getInstance] jget LEFT] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_LeftTrackballInputToGameKeyEventAction
    }
}

namespace eval ::LeftTrackballInputToGameKeyEventAction {
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
        if {[expr {[::LeftTrackballInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::LeftTrackballInputToGameKeyEventAction::staticSet_instance [::LeftTrackballInputToGameKeyEventAction new]
        }
        return [::LeftTrackballInputToGameKeyEventAction::staticGet_instance]
    }
}


