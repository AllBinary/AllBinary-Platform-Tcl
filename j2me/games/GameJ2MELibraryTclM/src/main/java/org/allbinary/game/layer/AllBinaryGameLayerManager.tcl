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
# package org.allbinary.game.layer

oo::class create ::AllBinaryGameLayerManager {
    superclass ::AllBinaryLayerManager
}

oo::define ::AllBinaryGameLayerManager {
    method initFields_AllBinaryGameLayerManager {} {
        my jset backgroundBasicColor {}
        my jset foregroundBasicColor {}
        my jset gameInfo {}
        my jset playerGameInputCompositeInterface {}
        
        
        
        my jset playerGameInputCompositeInterface [::NullPlayerGameInputComposite::staticGet_NULL_PLAYER_GAME_INPUT_COMPOSITE]
        return
    }
    
    

    constructor {backgroundBasicColor foregroundBasicColor gameInfo} {
        next
        my initFields_AllBinaryGameLayerManager
        my jset backgroundBasicColor $backgroundBasicColor
        my jset foregroundBasicColor $foregroundBasicColor
        set itemColorFactory [::ItemColorFactory::getInstance]
        $itemColorFactory jset INVERT_PAINT [[my jget backgroundBasicColor] intValue]
        $itemColorFactory jset PAINT [[my jget foregroundBasicColor] intValue]
        my jset gameInfo $gameInfo
    }
    

    method getLayerManager {} {
        return [self]
    }
    

    method init {} {
    }
    

    method getBackgroundBasicColor {} {
        return [my jget backgroundBasicColor]
    }
    

    method setBackgroundBasicColor {backgroundBasicColor} {
        my jset backgroundBasicColor $backgroundBasicColor
        [::ItemColorFactory::getInstance] jset INVERT_PAINT [[my jget backgroundBasicColor] intValue]
    }
    

    method getForegroundBasicColor {} {
        return [my jget foregroundBasicColor]
    }
    

    method setForegroundBasicColor {foregroundBasicColor} {
        my jset foregroundBasicColor $foregroundBasicColor
        [::ItemColorFactory::getInstance] jset PAINT [[my jget foregroundBasicColor] intValue]
    }
    

    method getGameInfo {} {
        return [my jget gameInfo]
    }
    

    method setGameInfo {gameInfo} {
        my jset gameInfo $gameInfo
    }
    

    method setLayerProcessorList {list} {
        set layerProcessorInterfaceArray [jarray [$list size] {}]
        set size [$layerProcessorInterfaceArray length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            $layerProcessorInterfaceArray set $index [[$list jget objectArray] get $index]
        }
        my setLayerProcessorArray $layerProcessorInterfaceArray
    }
    

    method setPlayerGameInputCompositeInterface {playerGameInputCompositeInterface} {
        my jset playerGameInputCompositeInterface $playerGameInputCompositeInterface
    }
    

    method getPlayerGameInputCompositeInterface {} {
        return [my jget playerGameInputCompositeInterface]
    }
}

namespace eval ::AllBinaryGameLayerManager {
    variable NULL_ALLBINARY_LAYER_MANAGERValue {}
    variable NULL_ALLBINARY_LAYER_MANAGERSet 0
    proc staticGet_NULL_ALLBINARY_LAYER_MANAGER {} {
        variable NULL_ALLBINARY_LAYER_MANAGERValue
        variable NULL_ALLBINARY_LAYER_MANAGERSet
        if {!$NULL_ALLBINARY_LAYER_MANAGERSet} {
            set NULL_ALLBINARY_LAYER_MANAGERSet 1
            set NULL_ALLBINARY_LAYER_MANAGERValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_ALLBINARY_LAYER_MANAGERValue
    }
    proc staticSet_NULL_ALLBINARY_LAYER_MANAGER {value} {
        variable NULL_ALLBINARY_LAYER_MANAGERValue
        variable NULL_ALLBINARY_LAYER_MANAGERSet
        set NULL_ALLBINARY_LAYER_MANAGERSet 1
        set NULL_ALLBINARY_LAYER_MANAGERValue $value
    }
    variable IDValue {}
    variable IDSet 0
    proc staticGet_ID {} {
        variable IDValue
        variable IDSet
        if {!$IDSet} {
            set IDSet 1
            set IDValue [[::SmallIntegerSingletonFactory::getInstance] getAt 22]
        }
        return $IDValue
    }
    proc staticSet_ID {value} {
        variable IDValue
        variable IDSet
        set IDSet 1
        set IDValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::AllBinaryGameLayerManager::staticGet_NULL_ALLBINARY_LAYER_MANAGER] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::AllBinaryGameLayerManager::staticSet_NULL_ALLBINARY_LAYER_MANAGER [::AllBinaryGameLayerManager new [[::BasicColorFactory::getInstance] jget BLACK] [[::BasicColorFactory::getInstance] jget WHITE] [::GameInfo::staticGet_NONE]]
        }
        return [::AllBinaryGameLayerManager::staticGet_NULL_ALLBINARY_LAYER_MANAGER]
    }
}


