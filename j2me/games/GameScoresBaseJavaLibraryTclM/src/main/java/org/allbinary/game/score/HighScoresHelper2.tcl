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

oo::class create ::HighScoresHelper2 {
    superclass ::HighScoresHelperBase
}

oo::define ::HighScoresHelper2 {
    method initFields_HighScoresHelper2 {} {
        my jset circularIndexUtil {}
        my jset selectedHighScores {}
        my jset circularIndexUtil [::CircularIndexUtil::createInstanceAt 0 0]
        my jset selectedHighScores [::NullHighScoresSingletonFactory::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_HighScoresHelper2
    }
    

    method setSelectedHighScores {selectedHighScores} {
        my jset selectedHighScores $selectedHighScores
    }
    

    method getSelectedHighScores {} {
        return [my jget selectedHighScores]
    }
    

    method setHighScoresArray {highScoresArrayP} {
        next $highScoresArrayP
        [my jget circularIndexUtil] setSize [[my jget highScoresArrayP] length]
        my selectHighScores
    }
    

    method selectHighScores {} {
        if {[expr {[[my jget highScoresArrayP] length] == 0}]} {
            my setSelectedHighScores [::NullHighScoresSingletonFactory::getInstance]
            return
        }
        [my jget circularIndexUtil] next
        set highScores [[my jget highScoresArrayP] get [[my jget circularIndexUtil] getIndex]]
        set index 0
        while {[expr {[expr {[$highScores getTotal] < 1}] && [expr {$index < [[my jget highScoresArrayP] length]}]}]} {
            set highScores [[my jget highScoresArrayP] get [[my jget circularIndexUtil] next]]
            jpostincr index 1
        }
        my setSelectedHighScores $highScores
    }
}

namespace eval ::HighScoresHelper2 {
}


