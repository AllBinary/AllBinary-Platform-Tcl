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

#In general allow scrolling of the menu and selection the center item
oo::class create ::CommandFormInputProcessor {
    superclass ::BasicMenuInputProcessor
}

oo::define ::CommandFormInputProcessor {
    method initFields_CommandFormInputProcessor {} {
        my jset MOTION_GESTURE_SOURCE_ID 0
        my jset CLICK_DELAY 0
        my jset clickTimeHelper {}
        my jset DOUBLE_CLICK_DELAY 0
        my jset doubleClickTimeHelper {}
        my jset isSingleKeyProcessing false
        my jset form {}
        my jset hasPressed false
        my jset PROCESS_COMMAND {}
        my jset NAME_LABEL {}
        my jset MOTION_GESTURE_SOURCE_ID [[::GameKeyEventFactory::getInstance] jget MOTION_GESTURE_SOURCE_ID]
        my jset CLICK_DELAY 150
        my jset clickTimeHelper [::TimeDelayHelper new [my jget CLICK_DELAY]]
        my jset DOUBLE_CLICK_DELAY 1200
        my jset doubleClickTimeHelper [::TimeDelayHelper new [my jget DOUBLE_CLICK_DELAY]]
        my jset isSingleKeyProcessing [[::InputFeatureFactory::getInstance] isSingleKeyProcessing]
        
        my jset hasPressed false
        my jset PROCESS_COMMAND "processCommand"
        my jset NAME_LABEL " ScrollSelectionForm: "
        return
    }
    

    constructor {gameKeyEventList playerInputId gameCanvas form} {
        next $gameKeyEventList $playerInputId $gameCanvas
        my initFields_CommandFormInputProcessor
        my jset form $form
    }
    

    method processInput {key} {
        if {[expr {[expr {[expr {[expr {$key == [::Canvas::staticGet_LEFT]}] || [expr {$key == [::Canvas::staticGet_RIGHT]}]}] || [expr {$key == [::Canvas::staticGet_UP]}]}] || [expr {$key == [::Canvas::staticGet_DOWN]}]}]} {
            [::PrimaryPlayerQueueFactory::getInstance] add [::SelectSound::getInstance]
            [my jget form] processInputKey $key
            return 1
        } elseif {[expr {$key == [::Canvas::staticGet_FIRE]}]} {
            [::PrimaryPlayerQueueFactory::getInstance] add [::SelectSound::getInstance]
            return [my processCommand]
        }
        return 0
    }
    

    method processCommand {} {
        set commandCurrentSelectionForm [my jget form]
        set command [$commandCurrentSelectionForm getSelectedCommand]
        [my jget logUtil] putF [$command toString] [self] [my jget PROCESS_COMMAND]
        set features [::Features::getInstance]
        set openGLFeatureFactory [::OpenGLFeatureFactory::getInstance]
        if {[expr {[expr {[::SWTUtil::staticGet_isSWT] && [$features isFeature [$openGLFeatureFactory jget OPENGL]]}] && [expr {$command ne [[::GameCommandsFactory::getInstance] jget EXIT_COMMAND]}]}]} {
            [::CommandRunnable new [self] $command] run
        } else {
            [::PrimaryThreadPool::getInstance] runTask [::CommandRunnable new [self] $command]
        }
        if {[expr {$command eq [[::GameCommandsFactory::getInstance] jget QUIT_COMMAND]}]} {
            return [expr {-1}]
        } else {
            return 1
        }
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
                set key [$gameKeyEvent getKey]
                if {[expr {[$gameKeyEvent getSourceId] != [my jget MOTION_GESTURE_SOURCE_ID]}]} {
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
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget PROCESS_INPUT] $e
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
        set touchMotionGestureFactory [::TouchMotionGestureFactory::getInstance]
        set motionGestureInput [$motionGestureEvent getMotionGesture]
        if {[expr {$motionGestureInput eq [$touchMotionGestureFactory jget RELEASED]}]} {
            set point [$motionGestureEvent getCurrentPoint]
            if {[[my jget form] isInForm $point]} {
                set index [[my jget form] getSelectedIndexForPoint $point]
                if {[expr {$index != [expr {-1}]}]} {
                    [::PrimaryPlayerQueueFactory::getInstance] add [::SelectSound::getInstance]
                    if {[expr {$index == [[my jget form] getSelectedIndex]}]} {
                        if {[[my jget clickTimeHelper] isTimeTNT]} {
                            my processCommand
                        }
                    } else {
                        [my jget form] setSelectedIndex $index
                    }
                } else {
                }
            }
            if {[my jget hasPressed]} {
                if {[expr {![[my jget doubleClickTimeHelper] isTimeTNT]}]} {
                    [my jget logUtil] putF "Double Press" [self] [[my jget gameInputStrings] jget PROCESS_MOTION_INPUT]
                    my processCommand
                }
                [my jget doubleClickTimeHelper] jset delay [my jget DOUBLE_CLICK_DELAY]
                [my jget doubleClickTimeHelper] setStartTimeTNT
            }
            my jset hasPressed false
        } elseif {[expr {$motionGestureInput eq [$touchMotionGestureFactory jget PRESSED]}]} {
            [my jget doubleClickTimeHelper] jset delay 0
            my jset hasPressed true
        }
    }
    

    method toString {} {
        return [[[[[::StringMaker new] append [next]] append [my jget NAME_LABEL]] append [[my jget form] toString]] toString]
    }
}

namespace eval ::CommandFormInputProcessor {
}


