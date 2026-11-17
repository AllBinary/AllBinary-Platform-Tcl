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
# package org.allbinary.game.input

oo::class create ::PlayerGameInput {
    superclass ::GameInput
}

oo::define ::PlayerGameInput {
    method initFields_PlayerGameInput {} {
        my jset gameInputStrings {}
        my jset playerInputId 0
        my jset gameInputStrings [::GameInputStrings::getInstance]
        
        return
    }
    

    constructor {gameKeyEventList removalGameKeyEventList playerInputId} {
        next $gameKeyEventList $removalGameKeyEventList
        my initFields_PlayerGameInput
        my jset playerInputId $playerInputId
    }
    

    method onPressGameKeyEvent {gameKeyEvent} {
        my add $gameKeyEvent
        my addForRemoval $gameKeyEvent
    }
    

    method onDownGameKeyEvent {gameKeyEvent} {
        my add $gameKeyEvent
    }
    

    method onDownKeyEvent {gameKeyEvent} {
        my add $gameKeyEvent
        my addForRemoval $gameKeyEvent
    }
    

    method onDownKey {gameKeyEvent} {
        ::PreLogUtil::put [[[[::StringMaker new] append [[::CommonLabels::getInstance] jget START_LABEL]] append [$gameKeyEvent toString]] toString] [self] [[my jget gameInputStrings] jget ON_DOWN_GAME_KEY]
    }
    

    method onUpGameKeyEvent {gameKeyEvent} {
        my addForRemoval $gameKeyEvent
    }
    

    method onUpKeyEvent {gameKeyEvent} {
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method getPlayerInputId {} {
        return [my jget playerInputId]
    }
}

namespace eval ::PlayerGameInput {
}


