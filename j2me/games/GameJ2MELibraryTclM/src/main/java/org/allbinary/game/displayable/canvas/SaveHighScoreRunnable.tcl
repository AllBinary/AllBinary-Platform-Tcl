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

oo::class create ::SaveHighScoreRunnable {
    superclass ::JObject
}

oo::define ::SaveHighScoreRunnable {
    method initFields_SaveHighScoreRunnable {} {
        my jset progressCanvas {}
        my jset isLast false
        my jset textBox {}
        my jset progressCanvas [::ProgressCanvasFactory::getInstance]
        
        
        return
    }
    

    constructor {isLast textBox} {
        next
        my initFields_SaveHighScoreRunnable
        my jset isLast $isLast
        my jset textBox $textBox
    }
    

    method run {} {
        set logUtil [::LogUtil::getInstance]
        try {
            if {[my jget isLast]} {
                [my jget textBox] submit
            } else {
                [my jget textBox] saveHighScore
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            $logUtil put [$commonStrings jget EXCEPTION] [self] "run" $e
            [my jget progressCanvas] end
        }
    }
}

namespace eval ::SaveHighScoreRunnable {
}


