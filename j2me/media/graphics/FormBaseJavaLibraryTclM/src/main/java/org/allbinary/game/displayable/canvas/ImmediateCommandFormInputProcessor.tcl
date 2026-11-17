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

oo::class create ::ImmediateCommandFormInputProcessor {
    superclass ::CommandFormInputProcessor
}

oo::define ::ImmediateCommandFormInputProcessor {
    method initFields_ImmediateCommandFormInputProcessor {} {
        my jset timeHelper {}
        my jset gameCommandCanvas {}
        my jset timeHelper [::TimeDelayHelper new 25]
        
        return
    }
    

    constructor {gameKeyEventList playerInputId gameCommandCanvas form} {
        next $gameKeyEventList $playerInputId $gameCommandCanvas $form
        my initFields_ImmediateCommandFormInputProcessor
        my jset gameCommandCanvas $gameCommandCanvas
    }
    

    method onPressGameKeyEvent {gameKeyEvent} {
        try {
            next $gameKeyEvent
            if {[[my jget timeHelper] isTimeTNT]} {
                my processInputList
                [[my jget gameCommandCanvas] jget repaintBehavior] onChangeRepaint [my getCanvas]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget ON_PRESS_GAME_KEY] $e
        }
    }
    

    method onDownGameKeyEvent {gameKeyEvent} {
        try {
            next $gameKeyEvent
            if {[[my jget timeHelper] isTimeTNT]} {
                my processInputList
                [[my jget gameCommandCanvas] jget repaintBehavior] onChangeRepaint [my getCanvas]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget ON_DOWN_GAME_KEY] $e
        }
    }
    

    method onUpGameKeyEvent {gameKeyEvent} {
        try {
            next $gameKeyEvent
            if {[[my jget timeHelper] isTimeTNT]} {
                my processInputList
                [[my jget gameCommandCanvas] jget repaintBehavior] onChangeRepaint [my getCanvas]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget ON_UP_GAME_KEY] $e
        }
    }
    

    method onMotionGestureEvent {motionGestureEvent} {
        try {
            next $motionGestureEvent
            if {[[my jget timeHelper] isTimeTNT]} {
                my processInputList
                [[my jget gameCommandCanvas] jget repaintBehavior] onChangeRepaint [my getCanvas]
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] "onMotionGestureEvent" $e
        }
    }
}

namespace eval ::ImmediateCommandFormInputProcessor {
}


