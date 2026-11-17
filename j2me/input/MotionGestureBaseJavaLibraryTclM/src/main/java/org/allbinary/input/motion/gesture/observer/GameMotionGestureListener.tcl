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
# package org.allbinary.input.motion.gesture.observer

oo::class create ::GameMotionGestureListener {
    superclass ::JObject
}

oo::define ::GameMotionGestureListener {
    method initFields_GameMotionGestureListener {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset motionGestureCollection {}
        my jset touchGestureCollection {}
        my jset signed {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset motionGestureCollection [::BasicArrayListD new]
        my jset touchGestureCollection [::BasicArrayListD new]
        
        return
    }
    

    constructor {signed} {
        next
        my initFields_GameMotionGestureListener
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset signed $signed
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
    }
    

    method onUpMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onDownMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onLeftMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onRightMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onDiagonalDownRightMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onDiagonalDownLeftMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onDiagonalUpRightMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onDiagonalUpLeftMotionGestureEvent {ev} {
        my onMotionGestureEvent $ev
    }
    

    method onPressedMotionGestureEvent {ev} {
        [my jget touchGestureCollection] add [$ev getMotionGesture]
    }
    

    method released {ev} {
        try {
            [my jget touchGestureCollection] add [$ev getMotionGesture]
            [my jget signed] onMotionGestureCompleted [my jget touchGestureCollection]
            [my jget touchGestureCollection] clear
        } on error {e} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [[my jget commonStrings] jget EXCEPTION_LABEL]
            $stringBuffer append [[::StringUtil::getInstance] toString1 [$ev getMotionGesture]]
            [my jget logUtil] put [$stringBuffer toString] [self] "release" $e
        }
    }
    

    method onScrolledMotionGestureEvent {motionGestureEvent} {
    }
    

    method onMotionGestureEvent {ev} {
        try {
            set motionGestureInput [$ev getMotionGesture]
            if {[expr {$motionGestureInput eq [[::TouchMotionGestureFactory::getInstance] jget PRESSED]}]} {
                my onPressedMotionGestureEvent $ev
            } elseif {[expr {$motionGestureInput eq [[::TouchMotionGestureFactory::getInstance] jget RELEASED]}]} {
                my released $ev
            } else {
                [my jget motionGestureCollection] add $motionGestureInput
                [my jget signed] onMotionGestureCompleted [my jget motionGestureCollection]
                [my jget motionGestureCollection] clear
                [my jget touchGestureCollection] clear
            }
        } on error {e} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append [[my jget commonStrings] jget EXCEPTION_LABEL]
            $stringBuffer append [[::StringUtil::getInstance] toString1 [$ev getMotionGesture]]
            [my jget logUtil] put [$stringBuffer toString] [self] "onMotionGestureEvent" $e
        }
    }
}

namespace eval ::GameMotionGestureListener {
}


