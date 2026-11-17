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
# package org.allbinary.game.displayable.canvas

oo::class create ::BasicMenuInputProcessor {
    superclass ::PlayerGameInput
}

oo::define ::BasicMenuInputProcessor {
    method initFields_BasicMenuInputProcessor {} {
        my jset motionGestureEventList {}
        my jset canvas {}
        my jset motionGestureEventList [::BasicArrayListD new]
        my jset canvas [::NullCanvas::staticGet_NULL_CANVAS]
        return
    }
    

    constructor {gameKeyEventList playerInputId gameCanvas} {
        next $gameKeyEventList [::BasicArrayListD new] $playerInputId
        my initFields_BasicMenuInputProcessor
        my jset canvas $gameCanvas
    }
    

    method onMotionGestureEvent {motionGestureEvent} {
        [my jget motionGestureEventList] add $motionGestureEvent
    }
    

    method onScrolledMotionGestureEvent {motionGestureEvent} {
    }
    

    method setCanvas {canvas} {
        my jset canvas $canvas
    }
    

    method getCanvas {} {
        return [my jget canvas]
    }
    

    method processInputList {} {
        return [expr {-1}]
    }
}

namespace eval ::BasicMenuInputProcessor {
}


