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

oo::class create ::HighScoresCanvas {
    superclass ::GameCommandCanvas
}

oo::define ::HighScoresCanvas {
    method initFields_HighScoresCanvas {} {
        my jset paintable {}
        my jset highScoreCommandsFactory {}
        my jset waitPaintable {}
        my jset highScoresPaintable {}
        my jset highScoresFactoryInterface {}
        my jset colorFillPaintable {}
        my jset highScoresHelper {}
        my jset gameInfo {}
        my jset highScoresCanvasInputProcessor {}
        my jset currentCommand {}
        my jset hasPainted false
        my jset paintable [::NullPaintable::getInstance]
        my jset highScoreCommandsFactory [::HighScoreCommandsFactory::getInstance]
        my jset waitPaintable [::SimpleTextPaintable new [[my jget commonStrings] jget PLEASE_WAIT_FOR_SERVER] [[::BasicColorFactory::getInstance] jget WHITE]]
        
        
        
        my jset highScoresHelper [::HighScoresHelperBase new]
        
        
        my jset currentCommand [[[my jget highScoreCommandsFactory] jget HIGH_SCORE_COMMANDS] get 0]
        my jset hasPainted false
        return
    }
    

    constructor {commandListener allBinaryGameLayerManager gameInfo paintable highScoresFactoryInterface highScoresCanvasInputProcessorFactoryInterface} {
        next $commandListener [::HighScoresCanvas::staticGet_NAME] [$allBinaryGameLayerManager getBackgroundBasicColor] [$allBinaryGameLayerManager getForegroundBasicColor]
        my initFields_HighScoresCanvas
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
        my jset highScoresPaintable $paintable
        my jset highScoresFactoryInterface $highScoresFactoryInterface
        my jset highScoresCanvasInputProcessor [$highScoresCanvasInputProcessorFactoryInterface getInstance [self]]
        my jset gameInfo $gameInfo
        [my jget waitPaintable] setBasicColorP [$allBinaryGameLayerManager getForegroundBasicColor]
        [my getHighScoresPaintable] setBasicColorP [$allBinaryGameLayerManager getForegroundBasicColor]
        my jset colorFillPaintable [[::ColorFillPaintableFactory::getInstance] getInstance [$allBinaryGameLayerManager getBackgroundBasicColor] false]
        if {[expr {[[[my jget highScoresHelper] getHighScoresArray] length] == [[[::NoHighScoresFactory::getInstance] jget NO_HIGH_SCORES] length]}]} {
            my setPaintable [my jget waitPaintable]
        } else {
            [my jget logUtil] putF "Show HighScores that are already loaded" [self] [[my jget commonStrings] jget CONSTRUCTOR]
            my updateCommand [my jget currentCommand]
            my setPaintable [my getHighScoresPaintable]
        }
        [::SecondaryThreadPool::getInstance] runTask [::HighScoreRunnable new [self]]
    }
    

    method initCommands {cmdListener} {
        my removeAllCommands
        my addCommand [[::GameCommandsFactory::getInstance] jget CLOSE_AND_SHOW_GAME_CANVAS]
        my setCommandListener $cmdListener
    }
    

    method open {} {
        next
        [my jget highScoresCanvasInputProcessor] open
    }
    

    method close {} {
        next
        [my jget highScoresCanvasInputProcessor] close
    }
    

    method paint {graphics} {
        [my jget colorFillPaintable] paint $graphics
        [my jget paintable] paint $graphics
        if {[expr {[my jget waitPaintable] ne [my jget paintable]}]} {
            [my jget highScoresCanvasInputProcessor] paint $graphics
        }
        next $graphics
        my jset hasPainted true
    }
    

    method executeUpdate {} {
        try {
            [my jget highScoresFactoryInterface] fetchHighScores [my getGameInfo] [self]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget UPDATE] $e
        }
    }
    

    method getHighScoresPaintable {} {
        return [my jget highScoresPaintable]
    }
    

    method setHighScoresArray {highScoresArray} {
        try {
            if {[expr {$highScoresArray ne {}}]} {
                [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget START]] appendint [$highScoresArray length]] toString] [self] "setHighScoresArray"
            } else {
                [my jget logUtil] putF [[my jget commonStrings] jget START] [self] "setHighScoresArray"
            }
            [my jget highScoresHelper] setHighScoresArray $highScoresArray
            my updateCommand [my jget currentCommand]
            my setPaintable [my getHighScoresPaintable]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget UPDATE] $e
        }
    }
    

    method updateCommand {command} {
        [my jget logUtil] putF [[[[::StringMaker new] append [[my jget commonStrings] jget START]] append [[my jget stringUtil] toString1 $command]] toString] [self] [[my jget commonStrings] jget UPDATE]
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        if {[[my jget highScoreCommandsFactory] isHighScoreCommand $command]} {
            set index [[my jget highScoreCommandsFactory] getIndex $command]
            set nextIndex [jint [expr {$index + 1}]]
            set highScoresArray [[my jget highScoresHelper] getHighScoresArray]
            if {[expr {$nextIndex >= [$highScoresArray length]}]} {
                set nextIndex 0
            }
            if {[expr {[$highScoresArray length] > 0}]} {
                [my getHighScoresPaintable] setHighScores [$highScoresArray get $index]
            } else {
                [my getHighScoresPaintable] setHighScores [::NullHighScoresSingletonFactory::getInstance]
            }
            if {[expr {$index != $nextIndex}]} {
                my removeAllCommands
                my addCommand [$gameCommandsFactory jget CLOSE_AND_SHOW_GAME_CANVAS]
                my addCommand [[[my jget highScoreCommandsFactory] jget HIGH_SCORE_COMMANDS] get $nextIndex]
            }
        }
        my jset currentCommand $command
        my close
        next
        my open
        [my jget repaintBehavior] onChangeRepaint [self]
    }
    

    method getGameInfo {} {
        return [my jget gameInfo]
    }
    

    method setPaintable {paintable} {
        my jset paintable $paintable
        [my jget repaintBehavior] onChangeRepaint [self]
    }
}

namespace eval ::HighScoresCanvas {
    variable NAMEValue {}
    variable NAMESet 0
    proc staticGet_NAME {} {
        variable NAMEValue
        variable NAMESet
        if {!$NAMESet} {
            set NAMESet 1
            set NAMEValue "HighScoresCanvas"
        }
        return $NAMEValue
    }
    proc staticSet_NAME {value} {
        variable NAMEValue
        variable NAMESet
        set NAMESet 1
        set NAMEValue $value
    }
}


