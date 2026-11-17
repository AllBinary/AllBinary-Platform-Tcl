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
# package org.allbinary.input

#TouchJ2ME
oo::class create ::TouchJ2ME {
    superclass ::JObject
}

oo::define ::TouchJ2ME {
    method initFields_TouchJ2ME {} {
        my jset logUtil {}
        my jset DEVICE_ID 0
        my jset motionRecognizer {}
        my jset logUtil [::LogUtil::getInstance]
        my jset DEVICE_ID 0
        my jset motionRecognizer [::AllMotionRecognizer new]
        return
    }
    

    constructor {} {
        next
        my initFields_TouchJ2ME
        set motionGesturesHandler [[[my jget motionRecognizer] getMotionGestureRecognizer] getMotionGesturesHandler]
        $motionGesturesHandler addListenerInterface [::GameMotionGestureListener new [::MotionGestureReceiveInterfaceFactory::getInstance]]
    }
    

    method pointerDragged {x y} {
        try {
            [my jget motionRecognizer] processDraggedMotionEvent $x $y [my jget DEVICE_ID] 0
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "pointerDragged" $e
        }
    }
    

    method pointerPressed {x y} {
        try {
            [my jget motionRecognizer] processStartMotionEvent $x $y [my jget DEVICE_ID] 0
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "pointerPressed" $e
        }
    }
    

    method pointerReleased {x y} {
        try {
            [my jget motionRecognizer] processEndMotionEvent $x $y [my jget DEVICE_ID] 0
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] "pointerReleased" $e
        }
    }
}

namespace eval ::TouchJ2ME {
}


