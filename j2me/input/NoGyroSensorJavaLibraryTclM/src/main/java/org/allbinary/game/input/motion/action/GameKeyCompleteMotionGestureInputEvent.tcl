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
# package org.allbinary.game.input.motion.action

oo::class create ::GameKeyCompleteMotionGestureInputEvent {
    superclass ::CompleteMotionGestureInputEvent
}

oo::define ::GameKeyCompleteMotionGestureInputEvent {
    method initFields_GameKeyCompleteMotionGestureInputEvent {} {
        my jset gameKey {}
        my jset gameKeyEvent {}
        my jset gameKey [::GameKey::staticGet_NULL_GAME_KEY]
        my jset gameKeyEvent [::GameKeyEvent::staticGet_NONE]
        return
    }
    

    constructor {name motionGestureInput inputToGameKeyMapping} {
        next $name $motionGestureInput
        my initFields_GameKeyCompleteMotionGestureInputEvent
    }
    

    method getSourceId {} {
        return 0
    }
    

    method update {} {
    }
    

    method setGameKeyEvent {gameKeyEvent} {
        my jset gameKeyEvent $gameKeyEvent
    }
    

    method getGameKeyEvent {} {
        return [my jget gameKeyEvent]
    }
    

    method setGameKey {gameKey} {
        my jset gameKey $gameKey
    }
    

    method getGameKey {} {
        return [my jget gameKey]
    }
}

namespace eval ::GameKeyCompleteMotionGestureInputEvent {
}


