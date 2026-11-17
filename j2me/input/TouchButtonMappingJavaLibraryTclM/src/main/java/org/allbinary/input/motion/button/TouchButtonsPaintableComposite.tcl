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
# package org.allbinary.input.motion.button

oo::class create ::TouchButtonsPaintableComposite {
    superclass ::ProcessPaintable
}

oo::define ::TouchButtonsPaintableComposite {
    method initFields_TouchButtonsPaintableComposite {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset inputMappingInterface {}
        my jset touchButtonsPaintable {}
        my jset timeHelper {}
        my jset released false
        my jset METHOD_NAME {}
        my jset RELEASE {}
        my jset FAST_REPEAT {}
        my jset IGNORE {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        
        
        my jset timeHelper [::TimeDelayHelper new 250]
        my jset released true
        my jset METHOD_NAME "onCompleteMotionGestureInputEvent"
        my jset RELEASE "Ignoring: MotionGestureInput Release"
        my jset FAST_REPEAT "Ignoring: MotionGestureInput Repeated To Quickly"
        my jset IGNORE "Ignoring: Until Released"
        return
    }
    

    constructor {inputMappingInterface basicColor} {
        next
        my initFields_TouchButtonsPaintableComposite
        my jset inputMappingInterface $inputMappingInterface
        [::CompleteMotionGestureInputEventHandler::getInstance] addListenerInterface [self]
        my jset touchButtonsPaintable [::TouchButtonsMappingPaintable new $basicColor]
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method onCompleteMotionGestureInputEvent {completeMotionGestureInputEvent} {
        try {
            [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "onCompleteMotionGestureInputEvent"
            set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
            set gameKeyCompleteMotionGestureInputEvent $completeMotionGestureInputEvent
            set gameKey [$gameKeyCompleteMotionGestureInputEvent getGameKey]
            set motionGestureInput [$completeMotionGestureInputEvent getMotionGestureInput]
            if {[expr {$motionGestureInput eq [$touchMotionGestureFactory jget RELEASED]}]} {
                [my jget logUtil] putF [my jget RELEASE] [self] [my jget METHOD_NAME]
                my jset released true
                return
            }
            if {[expr {[expr {$motionGestureInput eq [[::TouchMotionGestureFactory::getInstance] jget NO_MOTION]}] && [expr {![[my jget timeHelper] isTimeTNT]}]}]} {
                [my jget logUtil] putF [my jget FAST_REPEAT] [self] [my jget METHOD_NAME]
                return
            }
            if {[expr {![my jget released]}]} {
                [my jget logUtil] putF [my jget IGNORE] [self] [my jget METHOD_NAME]
                return
            }
            my jset released false
            [my jget logUtil] putF [[[[[[::StringMaker new] append "GameKey: "] append [[::StringUtil::getInstance] toString1 $gameKey]] append " MotionGestureInput: "] append [[::StringUtil::getInstance] toString1 $motionGestureInput]] toString] [self] [my jget METHOD_NAME]
            [my jget inputMappingInterface] processInputMapping $gameKey $motionGestureInput
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [my jget METHOD_NAME] $e
        }
    }
    

    method process {} {
        [::CompleteMotionGestureInputEventHandler::getInstance] removeListener [self]
    }
}

namespace eval ::TouchButtonsPaintableComposite {
}


