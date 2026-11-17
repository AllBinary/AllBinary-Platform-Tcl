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

oo::class create ::GameKeyFromMotionGestureEventListener {
    superclass ::CompleteMotionGestureInputEventListener
}

oo::define ::GameKeyFromMotionGestureEventListener {
    method initFields_GameKeyFromMotionGestureEventListener {} {
        my jset logUtil {}
        my jset previousGameKeyEvent {}
        my jset logUtil [::LogUtil::getInstance]
        my jset previousGameKeyEvent [::GameKeyEvent::staticGet_NONE]
        return
    }

    constructor {} {
        next
        my initFields_GameKeyFromMotionGestureEventListener
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onCompleteMotionGestureInputEvent {completeMotionGestureInputEvent} {
        try {
            set gameKeyCompleteMotionGestureInputEvent $completeMotionGestureInputEvent
            set gameKeyEvent [$gameKeyCompleteMotionGestureInputEvent getGameKeyEvent]
            if {[expr {$gameKeyEvent ne [my jget previousGameKeyEvent]}]} {
                if {[expr {[my jget previousGameKeyEvent] ne [::GameKeyEvent::staticGet_NONE]}]} {
                    [::UpGameKeyEventHandler::getInstance] fireEvent [my jget previousGameKeyEvent]
                }
                my jset previousGameKeyEvent $gameKeyEvent
                if {[expr {[expr {$gameKeyEvent ne {}}] && [expr {$gameKeyEvent ne [::GameKeyEvent::staticGet_NONE]}]}]} {
                    [::DownGameKeyEventHandler::getInstance] fireEvent $gameKeyEvent
                }
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "onCompleteMotionGestureInputEvent" $e
        }
    }
}

namespace eval ::GameKeyFromMotionGestureEventListener {
}


