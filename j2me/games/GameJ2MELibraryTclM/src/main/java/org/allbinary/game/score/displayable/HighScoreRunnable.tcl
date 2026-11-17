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
# package org.allbinary.game.score.displayable

oo::class create ::HighScoreRunnable {
    superclass ::ARunnable
}

oo::define ::HighScoreRunnable {
    method initFields_HighScoreRunnable {} {
        my jset highScoresCanvas {}
        
        return
    }
    

    constructor {highScoresCanvas} {
        next
        my initFields_HighScoreRunnable
        my jset highScoresCanvas $highScoresCanvas
    }
    

    method run {} {
        set commonStrings [::CommonStrings::getInstance]
        set logUtil [::LogUtil::getInstance]
        set highScoresCanvas [my jget highScoresCanvas]
        try {
            set isHTML [::J2MEUtil::isHTML]
            if {[expr {!$isHTML}]} {
                while {[expr {![$highScoresCanvas jget hasPainted]}]} {
                }
                $highScoresCanvas jset hasPainted false
            }
            set stringMaker [::StringMaker new]
            set systemWrapper [::ABSystemWrapper::getInstance]
            set currentTimeMillis [$systemWrapper currentTimeMillis]
            $logUtil putF [[[$stringMaker append "HighScoresCanvas - Request repaint to be sure: "] appendlong $currentTimeMillis] toString] [self] [$commonStrings jget RUN]
            [$highScoresCanvas jget repaintBehavior] onChangeRepaint $highScoresCanvas
            if {[expr {!$isHTML}]} {
                while {[expr {![$highScoresCanvas jget hasPainted]}]} {
                }
            }
            $stringMaker delete 0 [$stringMaker length]
            $logUtil putF [[[$stringMaker append "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "] appendlong $currentTimeMillis] toString] [self] [$commonStrings jget RUN]
            $highScoresCanvas executeUpdate
        } on error {e} {
            $logUtil put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget RUN] $e
        }
    }
}

namespace eval ::HighScoreRunnable {
}


