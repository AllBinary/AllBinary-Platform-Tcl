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
# package org.allbinary.game.input

oo::class create ::CompleteMotionGestureInputEvent {
    superclass ::AllBinaryEventObject
}

oo::define ::CompleteMotionGestureInputEvent {
    method initFields_CompleteMotionGestureInputEvent {} {
        my jset logUtil {}
        my jset name {}
        my jset motionGestureInput {}
        my jset logUtil [::LogUtil::getInstance]
        my jset name [[::StringUtil::getInstance] jget EMPTY_STRING]
        my jset motionGestureInput [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]
        return
    }
    

    constructor {name motionGestureInput} {
        next $motionGestureInput
        my initFields_CompleteMotionGestureInputEvent
        my setName $name
        try {
            my setMotionGestureInput $motionGestureInput
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "InputToGameKeyEventAction" $e
        }
    }
    

    method setName {name} {
        my jset name $name
    }
    

    method getName {} {
        return [my jget name]
    }
    

    method setMotionGestureInput {motionGestureInput} {
        my jset motionGestureInput $motionGestureInput
    }
    

    method getMotionGestureInput {} {
        return [my jget motionGestureInput]
    }
}

namespace eval ::CompleteMotionGestureInputEvent {
}


