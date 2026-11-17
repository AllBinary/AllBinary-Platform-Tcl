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

oo::class create ::SingleKeyPressGameKeyFromMotionGestureEventListener {
    superclass ::CompleteMotionGestureInputEventListener
}

oo::define ::SingleKeyPressGameKeyFromMotionGestureEventListener {
    method initFields_SingleKeyPressGameKeyFromMotionGestureEventListener {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_SingleKeyPressGameKeyFromMotionGestureEventListener
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onCompleteMotionGestureInputEvent {completeMotionGestureInputEvent} {
        try {
            set gameKeyCompleteMotionGestureInputEvent $completeMotionGestureInputEvent
            set gameKeyEvent [$gameKeyCompleteMotionGestureInputEvent getGameKeyEvent]
            [::PressGameKeyEventHandler::getInstance] fireEvent $gameKeyEvent
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "onCompleteMotionGestureInputEvent" $e
        }
    }
}

namespace eval ::SingleKeyPressGameKeyFromMotionGestureEventListener {
}


