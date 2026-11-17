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
# package org.allbinary.game.displayable.canvas

oo::class create ::PopupMenuInputProcessor {
    superclass ::BasicMenuInputProcessor
}

oo::define ::PopupMenuInputProcessor {
    method initFields_PopupMenuInputProcessor {} {
        my jset rectangleCollisionUtil {}
        my jset CLICK_DELAY 0
        my jset clickTimeHelper {}
        my jset rectangle {}
        my jset rectangleCollisionUtil [::RectangleCollisionUtil::getInstance]
        my jset CLICK_DELAY 120
        my jset clickTimeHelper [::TimeDelayHelper new [my jget CLICK_DELAY]]
        
        return
    }
    

    constructor {gameKeyEventList playerInputId gameCanvas rectangle} {
        next $gameKeyEventList $playerInputId $gameCanvas
        my initFields_PopupMenuInputProcessor
        my jset rectangle $rectangle
    }
    

    method init {rectangle} {
        my jset rectangle $rectangle
    }
    

    method processInput {key} {
        if {[expr {$key == [::Canvas::staticGet_KEY_STAR]}]} {
            set gameCanvas [my getCanvas]
            $gameCanvas toggleMenu
            return 1
        }
        return 0
    }
    

    method processInputList {} {
        try {
            set motionInputsIndex [my processMotionInputs]
            set list [my getGameKeyEventList]
            set size [$list size]
            set key 0
            set gameKeyEvent {}
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set gameKeyEvent [[$list jget objectArray] get $index]
                if {[expr {$gameKeyEvent ne {}}]} {
                    set key [$gameKeyEvent getKey]
                    if {[expr {[my processInput $key] == 1}]} {
                        break
                    }
                }
            }
            my clear
            if {[expr {[expr {$size > 0}] || [expr {$motionInputsIndex >= 0}]}]} {
                return 1
            } else {
                return [expr {-1}]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[::GameInputStrings::getInstance] jget PROCESS_INPUT] $e
            return [expr {-1}]
        }
    }
    

    method processMotionInputs {} {
        set lastIndex [jint [expr {[[my jget motionGestureEventList] size] - 1}]]
        if {[expr {$lastIndex >= 0}]} {
            set motionGestureEvent [[[my jget motionGestureEventList] jget objectArray] get $lastIndex]
            my processMotionInput $motionGestureEvent
        }
        [my jget motionGestureEventList] clear
        return $lastIndex
    }
    

    method processMotionInput {motionGestureEvent} {
        if {[expr {$motionGestureEvent eq {}}]} {
            [my jget logUtil] putF "Exception: Bug" [self] [[my jget gameInputStrings] jget PROCESS_MOTION_INPUT]
            return
        }
        set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
        set motionGestureInput [$motionGestureEvent getMotionGesture]
        if {[expr {$motionGestureInput eq [$touchMotionGestureFactory jget RELEASED]}]} {
            set point [$motionGestureEvent getCurrentPoint]
            set rectPoint [[my jget rectangle] getPoint]
            if {[[my jget rectangleCollisionUtil] isInside [$rectPoint getX] [$rectPoint getY] [expr {[[my jget rectangle] getMaxX] + 20}] [[my jget rectangle] getMaxY] [$point getX] [$point getY]]} {
                if {[[my jget clickTimeHelper] isTimeTNT]} {
                    set gameCanvas [my getCanvas]
                    $gameCanvas toggleMenu
                }
            }
        }
    }
}

namespace eval ::PopupMenuInputProcessor {
}


