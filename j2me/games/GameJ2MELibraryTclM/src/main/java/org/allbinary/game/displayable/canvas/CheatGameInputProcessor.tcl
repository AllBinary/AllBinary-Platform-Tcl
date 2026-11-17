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

oo::class create ::CheatGameInputProcessor {
    superclass ::PlayerGameInput
}

oo::define ::CheatGameInputProcessor {
    method initFields_CheatGameInputProcessor {} {
        my jset PROCESS_GAME {}
        my jset gameCanvas {}
        my jset gameKeyFactory {}
        my jset PROCESS_GAME "processGame"
        
        my jset gameKeyFactory [::GameKeyFactory::getInstance]
        return
    }
    

    constructor {gameCanvas} {
        next [::BasicArrayListD new] [::BasicArrayListD new] [expr {-1}]
        my initFields_CheatGameInputProcessor
        my jset gameCanvas $gameCanvas
    }
    

    method update {} {
        try {
            set gameLayerManager [[my jget gameCanvas] getLayerManager]
            set list [my getGameKeyEventList]
            set size [$list size]
            for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
                set anyType [[$list jget objectArray] get $index]
                set key [::GameKeyEventUtil::getKey $anyType]
                if {[expr {$key == [[[my jget gameKeyFactory] jget LEVEL_DOWN] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] strafeLeft
                    break
                } elseif {[expr {$key == [[[my jget gameKeyFactory] jget LEVEL_UP] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] strafeRight
                    break
                }
                if {[expr {$key == [[[my jget gameKeyFactory] jget LEFT] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] left
                    break
                } elseif {[expr {$key == [[[my jget gameKeyFactory] jget RIGHT] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] right
                    break
                } elseif {[expr {$key == [[[my jget gameKeyFactory] jget UP] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] up
                    break
                } elseif {[expr {$key == [[[my jget gameKeyFactory] jget DOWN] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] down
                    break
                } elseif {[expr {$key == [[[my jget gameKeyFactory] jget KEY_NUM1] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] special1 $gameLayerManager [::GameKeyEvent::staticGet_NONE]
                    break
                } elseif {[expr {$key == [[[my jget gameKeyFactory] jget KEY_NUM3] getId]}]} {
                    [::CheatGameInputProcessor::staticGet_inputProcessor] special2 $gameLayerManager [::GameKeyEvent::staticGet_NONE]
                    break
                }
            }
            $list clear
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget UPDATE] $e
        }
    }
}

namespace eval ::CheatGameInputProcessor {
    variable inputProcessorValue {}
    variable inputProcessorSet 0
    proc staticGet_inputProcessor {} {
        variable inputProcessorValue
        variable inputProcessorSet
        if {!$inputProcessorSet} {
            set inputProcessorSet 1
            set inputProcessorValue [::SpecialGameInputFactory::staticGet_NO_SPECIAL_GAME_INPUT]
        }
        return $inputProcessorValue
    }
    proc staticSet_inputProcessor {value} {
        variable inputProcessorValue
        variable inputProcessorSet
        set inputProcessorSet 1
        set inputProcessorValue $value
    }
}


