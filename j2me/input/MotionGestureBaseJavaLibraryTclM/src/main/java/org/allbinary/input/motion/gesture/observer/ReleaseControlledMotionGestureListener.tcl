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

oo::class create ::ReleaseControlledMotionGestureListener {
    superclass ::JObject
}

oo::define ::ReleaseControlledMotionGestureListener {
    method initFields_ReleaseControlledMotionGestureListener {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset currentMotionGesture {}
        my jset isMouseGestureOccurring false
        my jset motionGestureCollection {}
        my jset signed {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset currentMotionGesture [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]
        my jset isMouseGestureOccurring false
        my jset motionGestureCollection [::BasicArrayListD new]
        
        return
    }
    

    constructor {signed} {
        next
        my initFields_ReleaseControlledMotionGestureListener
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
        my jset isMouseGestureOccurring true
        my jset currentMotionGesture [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]
        my onMotionGestureEvent $ev
    }
    

    method onScrolledMotionGestureEvent {motionGestureEvent} {
    }
    

    method released {ev} {
        try {
            if {[expr {[my jget isMouseGestureOccurring] == false}]} {
                return
            }
            my jset isMouseGestureOccurring false
            [my jget signed] onMotionGestureCompleted [my jget motionGestureCollection]
            [my jget motionGestureCollection] clear
        } on error {e} {
            [my jget logUtil] put [[[[::StringMaker new] append [[my jget commonStrings] jget EXCEPTION_LABEL]] append [[::StringUtil::getInstance] toString1 [$ev getMotionGesture]]] toString] [self] "release" $e
        }
    }
    

    method onMotionGestureEvent {ev} {
        if {[expr {[my jget isMouseGestureOccurring] == false}]} {
            return
        }
        set motionGestureInput [$ev getMotionGesture]
        if {[expr {$motionGestureInput eq [[::TouchMotionGestureFactory::getInstance] jget PRESSED]}]} {
            my onPressedMotionGestureEvent $ev
        } elseif {[expr {$motionGestureInput eq [[::TouchMotionGestureFactory::getInstance] jget RELEASED]}]} {
            my released $ev
        } else {
            if {[expr {[my jget currentMotionGesture] ne $motionGestureInput}]} {
                my jset currentMotionGesture $motionGestureInput
                [my jget motionGestureCollection] add [$ev getMotionGesture]
            }
        }
    }
}

namespace eval ::ReleaseControlledMotionGestureListener {
}


