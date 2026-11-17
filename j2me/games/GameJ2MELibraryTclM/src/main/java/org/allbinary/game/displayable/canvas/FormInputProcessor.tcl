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

oo::class create ::FormInputProcessor {
    superclass ::InputProcessor
}

oo::define ::FormInputProcessor {
    method initFields_FormInputProcessor {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset gameKeyEventFactory {}
        my jset downKeyEventHandler {}
        my jset upGameKeyEventHandler {}
        my jset inputFactory {}
        my jset platformKeyFactory {}
        my jset allBinaryGameCanvas {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset gameKeyEventFactory [::GameKeyEventFactory::getInstance]
        my jset downKeyEventHandler [::DownKeyEventHandler::getInstance]
        my jset upGameKeyEventHandler [::UpGameKeyEventHandler::getInstance]
        my jset inputFactory [::InputFactory::getInstance]
        my jset platformKeyFactory [::PlatformKeyFactory::getInstance]
        
        return
    }
    

    constructor {allBinaryGameCanvas} {
        next
        my initFields_FormInputProcessor
        my jset allBinaryGameCanvas $allBinaryGameCanvas
    }
    

    method keyPressedByDevice {keyCode deviceId} {
        try {
            ::PreLogUtil::put [[[[[[[::StringMaker new] append [[my jget inputFactory] jget KEY_CODE_LABEL]] appendint $keyCode] append [[::CommonSeps::getInstance] jget SPACE]] append [[my jget inputFactory] jget DEVICE_ID_LABEL]] appendint $deviceId] toString] [self] [[my jget gameInputStrings] jget KEY_PRESSED]
            set input [[my jget inputFactory] getInstanceById $keyCode]
            set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput [my jget allBinaryGameCanvas] $input]
            [my jget downKeyEventHandler] fireEventForGameKeyEvent $gameKeyEvent
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT] $e
        }
    }
    

    method keyReleasedByDevice {canvas keyCode deviceId} {
        try {
            set input [[my jget inputFactory] getInstanceById $keyCode]
            if {[[my jget platformKeyFactory] isEnter $input]} {
                ::PreLogUtil::put [[[[[[[::StringMaker new] append [[my jget inputFactory] jget KEY_CODE_LABEL]] appendint $keyCode] append [[::CommonSeps::getInstance] jget SPACE]] append [[my jget inputFactory] jget DEVICE_ID_LABEL]] appendint $deviceId] toString] [self] [[my jget gameInputStrings] jget KEY_RELEASED]
                set gameKey [[::GameKeyFactory::getInstance] jget KEY_NUM0]
                set gameKeyEventSourceInterface $canvas
                set gameKeyEvent [[my jget gameKeyEventFactory] getInstanceForInput $gameKeyEventSourceInterface $gameKey]
                [my jget upGameKeyEventHandler] fireEvent $gameKeyEvent
                [[my jget upGameKeyEventHandler] getInstanceForDevice $deviceId] fireEvent $gameKeyEvent
            }
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget gameInputStrings] jget ADD_KEY_EVENT] $e
        }
    }
}

namespace eval ::FormInputProcessor {
}


