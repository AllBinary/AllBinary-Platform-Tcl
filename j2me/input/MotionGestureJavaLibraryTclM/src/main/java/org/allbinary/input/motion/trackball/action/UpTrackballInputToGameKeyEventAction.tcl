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

oo::class create ::UpTrackballInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::UpTrackballInputToGameKeyEventAction {
    method initFields_UpTrackballInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Up Action" [[::TrackballMotionGestureFactory::getInstance] jget UP] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_UpTrackballInputToGameKeyEventAction
    }
}

namespace eval ::UpTrackballInputToGameKeyEventAction {
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
        if {[expr {[::UpTrackballInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::UpTrackballInputToGameKeyEventAction::staticSet_instance [::UpTrackballInputToGameKeyEventAction new]
        }
        return [::UpTrackballInputToGameKeyEventAction::staticGet_instance]
    }
}


