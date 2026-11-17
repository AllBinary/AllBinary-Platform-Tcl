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

oo::class create ::ResolveCompleteMotionGestureListener {
    superclass ::JObject
}

oo::define ::ResolveCompleteMotionGestureListener {
    method initFields_ResolveCompleteMotionGestureListener {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_ResolveCompleteMotionGestureListener
        set commonStrings [::CommonStrings::getInstance]
        [my jget logUtil] putF "MotionGesture to CompleteMotionGesture Reciever" [self] [$commonStrings jget CONSTRUCTOR]
        [::CompleteMotionGestureInputEventHandler::getInstance] addListener [::GameKeyFromMotionGestureEventListener new]
    }
    

    method onMotionGestureCompleted {list} {
        set configuration [::MotionGestureConfigurationFactory::getInstance]
        set commandActionsList [$configuration getAssociateCommandActionsList]
        set size [$commandActionsList size]
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set association [[$commandActionsList jget objectArray] get $index]
            if {[expr {[$association isMotionGestureArrayEquals $list] == true}]} {
                set completeMotionGestureInputEvent [$association getCommandAction]
                [::CompleteMotionGestureInputEventHandler::getInstance] fireEvent $completeMotionGestureInputEvent
                break
            }
        }
    }
}

namespace eval ::ResolveCompleteMotionGestureListener {
}


