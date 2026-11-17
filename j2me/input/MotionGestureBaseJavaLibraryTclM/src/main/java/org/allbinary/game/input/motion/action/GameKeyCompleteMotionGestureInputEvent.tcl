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
        my jset gameKeyEventFactory {}
        my jset SOURCE_ID 0
        my jset gameKey {}
        my jset gameKeyEvent {}
        my jset inputToGameKeyMapping {}
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        my jset SOURCE_ID [[my jget gameKeyEventFactory] jget MOTION_GESTURE_SOURCE_ID]
        my jset gameKey [::GameKey::staticGet_NULL_GAME_KEY]
        my jset gameKeyEvent [::GameKeyEvent::staticGet_NONE]
        
        return
    }
    

    constructor {name motionGestureInput inputToGameKeyMapping} {
        next $name $motionGestureInput
        my initFields_GameKeyCompleteMotionGestureInputEvent
        my jset inputToGameKeyMapping $inputToGameKeyMapping
        [::GameKeyCompleteMotionGestureInputEventFactory::getInstance] add [self]
        my update
    }
    

    method getSourceId {} {
        return [my jget SOURCE_ID]
    }
    

    method update {} {
        try {
            my setGameKey [[my jget inputToGameKeyMapping] getInstance [[my getMotionGestureInput] getId]]
            my setGameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [self] [my getGameKey]]
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget UPDATE] $e
        }
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


