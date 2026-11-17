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

oo::class create ::TouchButtonRecognizer {
    superclass ::JObject
}

oo::define ::TouchButtonRecognizer {
    method initFields_TouchButtonRecognizer {} {
        my jset logUtil {}
        my jset rectangleCollisionUtil {}
        my jset upGameKeyEventHandler {}
        my jset downGameKeyEventHandler {}
        my jset lastPressedTouchButtonInput {}
        my jset currentlyPressedTouchButtonSingleton {}
        my jset releaseHelper {}
        my jset logUtil [::LogUtil::getInstance]
        my jset rectangleCollisionUtil [::RectangleCollisionUtil::getInstance]
        my jset upGameKeyEventHandler [::UpGameKeyEventHandler::getInstance]
        my jset downGameKeyEventHandler [::DownGameKeyEventHandler::getInstance]
        my jset lastPressedTouchButtonInput [[::BasicTouchInputFactory::getInstance] jget NONE]
        my jset currentlyPressedTouchButtonSingleton [::CurrentlyPressedTouchButtonSingleton::getInstance]
        my jset releaseHelper {}
        return
    }
    

    constructor {} {
        next
        my initFields_TouchButtonRecognizer
        if {[[::TouchScreenFactory::getInstance] isMultiTouch]} {
            my jset releaseHelper [::MultitouchReleaseHelper new [self]]
        } else {
            my jset releaseHelper [::ReleaseHelper new [self]]
        }
    }
    

    method processRelease {touchButtonInput deviceId} {
        [my jget releaseHelper] release $touchButtonInput $deviceId
        set gameKeyEvent [$touchButtonInput getGameKeyEvent]
        [my jget upGameKeyEventHandler] fireEvent $gameKeyEvent
        [[my jget upGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
        [my jget currentlyPressedTouchButtonSingleton] remove $touchButtonInput
    }
    

    method releaseTouchButtonInput {x y deviceId} {
        set touchButtonInput [my jget lastPressedTouchButtonInput]
        if {[[my jget currentlyPressedTouchButtonSingleton] contains $touchButtonInput]} {
            my jset lastPressedTouchButtonInput [[::BasicTouchInputFactory::getInstance] jget NONE]
            my processRelease $touchButtonInput $deviceId
            return true
        } else {
            set list [[::TouchButtonFactory::getInstance] getList]
            set rectangle {}
            set point {}
            set touchButton {}
            for {set index [jint [expr {[$list size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
                set touchButton [[$list jget objectArray] get $index]
                set rectangle [$touchButton getRectangle]
                set point [$rectangle getPoint]
                if {[[my jget rectangleCollisionUtil] isInside [$point getX] [$point getY] [$rectangle getMaxX] [$rectangle getMaxY] $x $y]} {
                    set touchButtonInput [$touchButton getTouchButtonInput]
                    my processRelease $touchButtonInput $deviceId
                    return true
                }
            }
        }
        return false
    }
    

    method pressTouchButtonInput {x y deviceId} {
        set list [[::TouchButtonFactory::getInstance] getList]
        set rectangle {}
        set point {}
        set touchButton {}
        set touchButtonInput {}
        set gameKeyEvent {}
        for {set index [jint [expr {[$list size] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            set touchButton [[$list jget objectArray] get $index]
            set rectangle [$touchButton getRectangle]
            set point [$rectangle getPoint]
            if {[[my jget rectangleCollisionUtil] isInside [$point getX] [$point getY] [$rectangle getMaxX] [$rectangle getMaxY] $x $y]} {
                set touchButtonInput [$touchButton getTouchButtonInput]
                if {[expr {![[my jget currentlyPressedTouchButtonSingleton] contains $touchButtonInput]}]} {
                    [my jget releaseHelper] release $touchButtonInput $deviceId
                    my jset lastPressedTouchButtonInput $touchButtonInput
                    [my jget currentlyPressedTouchButtonSingleton] add $touchButtonInput
                    set gameKeyEvent [$touchButtonInput getGameKeyEvent]
                    [my jget downGameKeyEventHandler] fireEvent $gameKeyEvent
                    [[my jget downGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
                }
                return true
            }
        }
        return false
    }
}

namespace eval ::TouchButtonRecognizer {
}


