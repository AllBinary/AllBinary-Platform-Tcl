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

oo::class create ::GameCanvasInputProcessor {
    superclass ::InputProcessor
}

oo::define ::GameCanvasInputProcessor {
    method initFields_GameCanvasInputProcessor {} {
        my jset logUtil {}
        my jset allBinaryGameCanvas {}
        my jset downGameKeyEventHandler {}
        my jset upGameKeyEventHandler {}
        my jset downKeyEventHandler {}
        my jset smallIntegerSingletonFactory {}
        my jset inputToGameKeyMapping {}
        my jset NONE {}
        my jset gameKeyEventFactory {}
        my jset logUtil [::LogUtil::getInstance]
        
        my jset downGameKeyEventHandler [::DownGameKeyEventHandler::getInstance]
        my jset upGameKeyEventHandler [::UpGameKeyEventHandler::getInstance]
        my jset downKeyEventHandler [::DownKeyEventHandler::getInstance]
        my jset smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        my jset inputToGameKeyMapping [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
        my jset NONE [[::GameKeyFactory::getInstance] jget NONE]
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        return
    }
    

    constructor {allBinaryGameCanvas} {
        next
        my initFields_GameCanvasInputProcessor
        my jset allBinaryGameCanvas $allBinaryGameCanvas
        [my jget inputToGameKeyMapping] init [my jget allBinaryGameCanvas]
    }
    

    method keyPressedByDevice {keyCode deviceId} {
        try {
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas [my jget allBinaryGameCanvas] $keyCode]
            if {[expr {$gameKey ne [my jget NONE]}]} {
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [my jget allBinaryGameCanvas] $gameKey]
                [my jget downGameKeyEventHandler] fireEvent $gameKeyEvent
                [[my jget downGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
            } else {
                [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameInputStrings] jget NO_KEY]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT]
            }
            set keyCodeAsInteger [[my jget smallIntegerSingletonFactory] getAtNoThrow $keyCode]
            [my jget downKeyEventHandler] fireEventI $keyCodeAsInteger
            [[my jget downKeyEventHandler] getInstanceForDevice $deviceId] fireEventI $keyCodeAsInteger
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT] $e
        }
    }
    

    method keyReleasedByDevice {canvas keyCode deviceId} {
        my removeGameKeyEvent $canvas $keyCode $deviceId false
    }
    

    method removeGameKeyEvent {canvas keyCode deviceId repeated} {
        try {
            set gameKey [[my jget inputToGameKeyMapping] getInstanceForCanvas $canvas $keyCode]
            if {[expr {$gameKey ne [my jget NONE]}]} {
                set gameKeyEventSourceInterface $canvas
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput $gameKeyEventSourceInterface $gameKey]
                [my jget upGameKeyEventHandler] fireEvent $gameKeyEvent
                [[my jget upGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
            } else {
                [my jget logUtil] putF [[[[::StringMaker new] append [[my jget gameInputStrings] jget NO_KEY]] appendint $keyCode] toString] [self] [[my jget gameInputStrings] jget REMOVE_KEY_EVENT]
            }
        } on error {e} {
            [my jget logUtil] put "Key Event Error" [self] [[my jget gameInputStrings] jget REMOVE_KEY_EVENT] $e
        }
    }
}

namespace eval ::GameCanvasInputProcessor {
}


