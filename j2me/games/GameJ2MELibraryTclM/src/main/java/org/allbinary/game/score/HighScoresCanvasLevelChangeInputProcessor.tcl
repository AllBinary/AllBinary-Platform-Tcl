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

oo::class create ::HighScoresCanvasLevelChangeInputProcessor {
    superclass ::HighScoresCanvasInputProcessor
}

oo::define ::HighScoresCanvasLevelChangeInputProcessor {
    method initFields_HighScoresCanvasLevelChangeInputProcessor {} {
        my jset displayInfoSingleton {}
        my jset INSTRUCTIONS {}
        my jset myFontProcessor {}
        my jset anchor 0
        my jset fontHeight 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset INSTRUCTIONS "(Right = Next Track, Left = Previous Track)"
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset fontHeight 0
        return
    }
    

    constructor {highScoresCanvas} {
        next $highScoresCanvas
        my initFields_HighScoresCanvasLevelChangeInputProcessor
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset fontHeight [$font getHeight]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method open {} {
        [::GameKeyEventHandler::getInstance] addListener [self]
    }
    

    method close {} {
        [::GameKeyEventHandler::getInstance] removeListener [self]
    }
    

    method update {} {
        set list [my getGameKeyEventList]
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set anyType [[$list jget objectArray] get $index]
            set key [::GameKeyEventUtil::getKey $anyType]
            if {[expr {$key == [::Canvas::staticGet_RIGHT]}]} {
                [[my getHighScoresCanvas] getGameInfo] nextGameLevel
            } elseif {[expr {$key == [::Canvas::staticGet_LEFT]}]} {
                [[my getHighScoresCanvas] getGameInfo] previousGameLevel
            }
            [my getHighScoresCanvas] executeUpdate
        }
        $list clear
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set width [[my jget displayInfoSingleton] getLastWidth]
        set topScoresWidth ([expr {[[$graphics getFont] stringWidth [my jget INSTRUCTIONS]] >> 1}])
        $graphics drawString [my jget INSTRUCTIONS] [jint [expr {([expr {$width >> 1}]) - $topScoresWidth}]] [jint [expr {[my jget fontHeight] * 2}]] [my jget anchor]
    }
}

namespace eval ::HighScoresCanvasLevelChangeInputProcessor {
}


