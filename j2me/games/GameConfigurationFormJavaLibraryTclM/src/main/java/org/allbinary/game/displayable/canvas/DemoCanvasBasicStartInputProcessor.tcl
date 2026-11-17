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

oo::class create ::DemoCanvasBasicStartInputProcessor {
    superclass ::BasicMenuInputProcessor
}

oo::define ::DemoCanvasBasicStartInputProcessor {
    method initFields_DemoCanvasBasicStartInputProcessor {} {
        return
    }
    

    constructor {gameKeyEventList gameCanvas} {
        next $gameKeyEventList [expr {-1}] $gameCanvas
        my initFields_DemoCanvasBasicStartInputProcessor
    }
    

    method processInputList {} {
        set list [my getGameKeyEventList]
        set size [$list size]
        set gameKeyEvent {}
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameKeyEvent [[$list jget objectArray] get $index]
            [my jget logUtil] putF [[[[::StringMaker new] append "Start GameKey: "] append [[::StringUtil::getInstance] toString1 $gameKeyEvent]] toString] [self] [[::GameInputStrings::getInstance] jget PROCESS_INPUT]
        }
        [[my getCanvas] getCustomCommandListener] commandAction [[::GameCommandsFactory::getInstance] jget START_COMMAND] [::NullCanvas::staticGet_NULL_CANVAS]
        return $size
    }
}

namespace eval ::DemoCanvasBasicStartInputProcessor {
}


