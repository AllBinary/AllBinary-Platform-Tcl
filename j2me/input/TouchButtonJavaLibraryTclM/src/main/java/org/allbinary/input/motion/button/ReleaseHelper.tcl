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

oo::class create ::ReleaseHelper {
    superclass ::JObject
}

oo::define ::ReleaseHelper {
    method initFields_ReleaseHelper {} {
        my jset touchButtonRecognizer {}
        
        return
    }
    

    constructor {touchButtonRecognizer} {
        next
        my initFields_ReleaseHelper
        my jset touchButtonRecognizer $touchButtonRecognizer
    }
    

    method release {touchButtonInput deviceId} {
        set nextTouchButtonInput {}
        set gameKeyEvent {}
        for {set index [jint [expr {[[[my jget touchButtonRecognizer] jget currentlyPressedTouchButtonSingleton] size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set nextTouchButtonInput [[[my jget touchButtonRecognizer] jget currentlyPressedTouchButtonSingleton] get $index]
            set gameKeyEvent [$nextTouchButtonInput getGameKeyEvent]
            [[my jget touchButtonRecognizer] jget upGameKeyEventHandler] fireEvent $gameKeyEvent
            [[[my jget touchButtonRecognizer] jget upGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
            [[my jget touchButtonRecognizer] jget currentlyPressedTouchButtonSingleton] removeAt $index
        }
    }
}

namespace eval ::ReleaseHelper {
}


