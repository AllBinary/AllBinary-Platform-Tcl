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
# package org.allbinary.game

oo::class create ::GameStrings {
    superclass ::JObject
}

oo::define ::GameStrings {
    method initFields_GameStrings {} {
        my jset PROCESS_TICK {}
        my jset ON_GAME_INITIALIZED {}
        my jset UPDATESURFACE {}
        my jset ON_SET_DISPLAYABLE {}
        my jset UNPAUSE {}
        my jset TOGGLE_MENU {}
        my jset SET_GAME_OVER {}
        my jset GAME_STATE {}
        my jset SET_GAME_STATE {}
        my jset STOP_GAME_CANVAS_RUNNABLE_INTERFACE {}
        my jset PROCESS_TICK "processTick"
        my jset ON_GAME_INITIALIZED "onGameInitialized"
        my jset UPDATESURFACE "updateSurface"
        my jset ON_SET_DISPLAYABLE "onSetDisplayable"
        my jset UNPAUSE "unPause"
        my jset TOGGLE_MENU "toggleMenu"
        my jset SET_GAME_OVER "setGameOver"
        my jset GAME_STATE "Game State: "
        my jset SET_GAME_STATE "setGameState"
        my jset STOP_GAME_CANVAS_RUNNABLE_INTERFACE "stopGameCanvasRunnableInterface"
        return
    }

    constructor {} {
        next
        my initFields_GameStrings
    }
    
}

namespace eval ::GameStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameStrings new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::GameStrings::staticGet_instance]
    }
}


