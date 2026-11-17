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

oo::class create ::EndGameProcessor {
    superclass ::Processor
}

oo::define ::EndGameProcessor {
    method initFields_EndGameProcessor {} {
        my jset gameStateFactory {}
        my jset gameCanvas {}
        my jset WAIT 0
        my jset gameStateFactory [::GameStateFactory::getInstance]
        
        my jset WAIT 5000
        return
    }
    

    constructor {gameCanvas} {
        next
        my initFields_EndGameProcessor
        my jset gameCanvas $gameCanvas
    }
    

    method process {} {
        if {[[my jget gameCanvas] isHighScoreSubmitted]} {
            if {[[[my jget gameCanvas] getGameStateTimeHelper] isElapsedTNT [my jget WAIT]]} {
                if {[expr {[[my jget gameCanvas] getGameState] == [[my jget gameStateFactory] jget SHOW_END_RESULT_GAME_STATE]}]} {
                    set highScoresBase [[my jget gameCanvas] jget highScoresHelper]
                    set highScores [$highScoresBase getSelectedHighScores]
                    if {[expr {$highScores ne [::NullHighScoresSingletonFactory::getInstance]}]} {
                        $highScoresBase selectHighScores
                        [[my jget gameCanvas] getRealHighScoresPaintable] setHighScores $highScores
                        [my jget gameCanvas] setGameState [[my jget gameStateFactory] jget SHOW_HIGH_SCORE_GAME_STATE]
                        [my jget gameCanvas] setHighScoresPaintable [[my jget gameCanvas] getRealHighScoresPaintable]
                    }
                } elseif {[expr {[[my jget gameCanvas] getGameState] == [[my jget gameStateFactory] jget SHOW_HIGH_SCORE_GAME_STATE]}]} {
                    [my jget gameCanvas] setGameState [[my jget gameStateFactory] jget SHOW_END_RESULT_GAME_STATE]
                    [my jget gameCanvas] setHighScoresPaintable [::NullPaintable::getInstance]
                }
            }
        }
    }
}

namespace eval ::EndGameProcessor {
}


