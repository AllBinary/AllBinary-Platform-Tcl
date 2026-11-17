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

oo::class create ::HighScoresPaintable {
    superclass ::Paintable
}

oo::define ::HighScoresPaintable {
    method initFields_HighScoresPaintable {} {
        my jset displayInfoSingleton {}
        my jset myFontProcessor {}
        my jset basicColor {}
        my jset highScores {}
        my jset anchor 0
        my jset charHeight 0
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        my jset myFontProcessor [::UpdateMyFontProcessor new [self]]
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        my jset highScores [::NullHighScoresSingletonFactory::getInstance]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        my jset charHeight 0
        return
    }
    

    constructor {} {
        next
        my initFields_HighScoresPaintable
    }
    

    method updateMeasurement {graphics} {
        set font [$graphics getFont]
        my jset charHeight [$font getHeight]
        my jset myFontProcessor [::MyFontProcessor::getInstance]
    }
    

    method onEvent {eventObject} {
        set colorChangeEvent $eventObject
        my jset basicColor [$colorChangeEvent getBasicColorP]
    }
    

    method paint {graphics} {
        [my jget myFontProcessor] process $graphics
        set width [[my jget displayInfoSingleton] getLastWidth]
        set height [[my jget displayInfoSingleton] getLastHeight]
        $graphics setColor [[my getBasicColorP] intValue]
        set heading [[my jget highScores] getHeading]
        set topScoresWidth ([expr {[[$graphics getFont] stringWidth $heading] >> 1}])
        set charHeight [my jget charHeight]
        $graphics drawString $heading [jint [expr {([expr {$width >> 1}]) - $topScoresWidth}]] $charHeight [my jget anchor]
        $graphics drawString [[my jget highScores] getColumnOneHeading] 10 [jint [expr {$charHeight * 3}]] [my jget anchor]
        set columnTwoHeading [[my jget highScores] getColumnTwoHeading]
        set columnTwoHeadingWidth [[$graphics getFont] stringWidth $columnTwoHeading]
        $graphics drawString $columnTwoHeading [jint [expr {[jint [expr {$width - 10}]] - $columnTwoHeadingWidth}]] [jint [expr {$charHeight * 3}]] [my jget anchor]
        set index 4
        set largestSecondColumnWidth $columnTwoHeadingWidth
        set list [[my jget highScores] getList]
        set size [$list size]
        set vectorIndex 0
        set highScore {}
        while {[expr {[expr {$vectorIndex < $size}] && [expr {[jint [expr {$charHeight * $index}]] < [jint [expr {$height - ([jint [expr {$charHeight * 2}]])}]]}]}]} {
            set highScore [[$list jget objectArray] get $vectorIndex]
            set nextScoreWidth [[$graphics getFont] stringWidth [$highScore getScoreString]]
            if {[expr {$nextScoreWidth > $largestSecondColumnWidth}]} {
                set largestSecondColumnWidth $nextScoreWidth
            }
            jpostincr vectorIndex 1
        }
        set vectorIndex 0
        while {[expr {[expr {$vectorIndex < $size}] && [expr {[jint [expr {$charHeight * $index}]] < [jint [expr {$height - ([jint [expr {$charHeight * 2}]])}]]}]}]} {
            set highScore [[$list jget objectArray] get $vectorIndex]
            $graphics drawString [$highScore getName] 10 [jint [expr {$charHeight * $index}]] [my jget anchor]
            $graphics drawString [$highScore getScoreString] [jint [expr {[jint [expr {$width - 10}]] - $largestSecondColumnWidth}]] [jint [expr {$charHeight * $index}]] [my jget anchor]
            jpostincr index 1
            jpostincr vectorIndex 1
        }
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method setHighScores {highScores} {
        my jset highScores $highScores
    }
}

namespace eval ::HighScoresPaintable {
}


