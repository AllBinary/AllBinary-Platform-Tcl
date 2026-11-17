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

oo::class create ::DownTrackballInputToGameKeyEventAction {
    superclass ::GameKeyCompleteMotionGestureInputEvent
}

oo::define ::DownTrackballInputToGameKeyEventAction {
    method initFields_DownTrackballInputToGameKeyEventAction {} {
        return
    }
    
    

    constructor {} {
        next "Down Action" [[::TrackballMotionGestureFactory::getInstance] jget DOWN] [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my initFields_DownTrackballInputToGameKeyEventAction
    }
}

namespace eval ::DownTrackballInputToGameKeyEventAction {
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
        if {[expr {[::DownTrackballInputToGameKeyEventAction::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::DownTrackballInputToGameKeyEventAction::staticSet_instance [::DownTrackballInputToGameKeyEventAction new]
        }
        return [::DownTrackballInputToGameKeyEventAction::staticGet_instance]
    }
}


