# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

oo::class create ::NullGameCanvasRunnable {
    superclass ::JObject
}

oo::define ::NullGameCanvasRunnable {
    method initFields_NullGameCanvasRunnable {} {
        my jset gameStateFactory {}
        my jset gameStateFactory [::GameStateFactory::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_NullGameCanvasRunnable
    }
    

    method getTitle {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method isInitialized {} {
        return false
    }
    

    method isPaused {} {
        return false
    }
    

    method unPause {} {
    }
    

    method pause {} {
    }
    

    method isHighScoreSubmitted {} {
        return false
    }
    

    method setHighScoreSubmitted {highScoreSubmitted} {
    }
    

    method processGameOver {} {
    }
    

    method isGameOver {} {
        return false
    }
    

    method initCommands {cmdListener} {
    }
    

    method getCurrentStateHashtable {} {
        return [[::StdUtil::getInstance] jget NULL_TABLE]
    }
    

    method getLoadStateHashtable {} {
        return [[::StdUtil::getInstance] jget NULL_TABLE]
    }
    

    method setLoadStateHashtable {hashtable} {
    }
    

    method getType {} {
        return [expr {-1}]
    }
    

    method setGameState {gameState} {
    }
    

    method getGameState {} {
        return [[my jget gameStateFactory] jget NO_GAME_STATE]
    }
    

    method itemStateChanged {item} {
    }
    

    method paint {graphics} {
    }
    

    method paintThreed {graphics} {
    }
    

    method isRunning {} {
        return false
    }
    

    method setRunning {isRunning} {
    }
    

    method setThread {thread} {
    }
    

    method run {} {
    }
}

namespace eval ::NullGameCanvasRunnable {
    variable NULL_GAME_CANVAS_RUNNABLEValue {}
    variable NULL_GAME_CANVAS_RUNNABLESet 0
    proc staticGet_NULL_GAME_CANVAS_RUNNABLE {} {
        variable NULL_GAME_CANVAS_RUNNABLEValue
        variable NULL_GAME_CANVAS_RUNNABLESet
        if {!$NULL_GAME_CANVAS_RUNNABLESet} {
            set NULL_GAME_CANVAS_RUNNABLESet 1
            set NULL_GAME_CANVAS_RUNNABLEValue [::NullGameCanvasRunnable new]
        }
        return $NULL_GAME_CANVAS_RUNNABLEValue
    }
    proc staticSet_NULL_GAME_CANVAS_RUNNABLE {value} {
        variable NULL_GAME_CANVAS_RUNNABLEValue
        variable NULL_GAME_CANVAS_RUNNABLESet
        set NULL_GAME_CANVAS_RUNNABLESet 1
        set NULL_GAME_CANVAS_RUNNABLEValue $value
    }
}


