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
# package org.allbinary.game.score

oo::class create ::HighScoresCanvasInputProcessor {
    superclass ::PlayerGameInput
}

oo::define ::HighScoresCanvasInputProcessor {
    method initFields_HighScoresCanvasInputProcessor {} {
        my jset highScoresCanvas {}
        
        return
    }
    

    constructor {highScoresCanvas} {
        next [::BasicArrayListD new] [::BasicArrayListD new] [expr {-1}]
        my initFields_HighScoresCanvasInputProcessor
        my jset highScoresCanvas $highScoresCanvas
    }
    

    method open {} {
    }
    

    method close {} {
    }
    

    method onPressGameKeyEvent {gameKeyEvent} {
        next $gameKeyEvent
        my update
    }
    

    method onDownGameKeyEvent {gameKeyEvent} {
        next $gameKeyEvent
        my update
    }
    

    method onUpGameKeyEvent {gameKeyEvent} {
        next $gameKeyEvent
        my update
    }
    

    method paint {graphics} {
    }
    

    method getHighScoresCanvas {} {
        return [my jget highScoresCanvas]
    }
}

namespace eval ::HighScoresCanvasInputProcessor {
}


