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
# package org.allbinary.game.input

oo::class create ::TestingInputSingleton {
    superclass ::AllBinaryGameLayer
}

oo::define ::TestingInputSingleton {
    method initFields_TestingInputSingleton {} {
        my jset inputProcessorArray {}
        my jset testInputPaintable {}
        my jset inputProcessorArray [jarray [[::InputFactory::getInstance] jget MAX] {}]
        my jset testInputPaintable [::NullPaintable::getInstance]
        return
    }
    
    

    constructor {} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING] [::RectangleFactory::staticGet_SINGLETON] [::ViewPosition::getInstanceD]
        my initFields_TestingInputSingleton
        ::GameInputProcessorUtil::init [my jget inputProcessorArray]
    }
    

    method initInputProcessors {} {
    }
    

    method initInputProcessorsForTestInput {aTestInputInterface} {
        set testInputInterface $aTestInputInterface
        my jset testInputPaintable $testInputInterface
        [my jget inputProcessorArray] set [::Canvas::staticGet_UP] [::GameInputProcessor new]
        [my jget inputProcessorArray] set [::Canvas::staticGet_DOWN] [::GameInputProcessor new]
        [my jget inputProcessorArray] set [::Canvas::staticGet_LEFT] [::GameInputProcessor new]
        [my jget inputProcessorArray] set [::Canvas::staticGet_RIGHT] [::GameInputProcessor new]
        [my jget inputProcessorArray] set [::Canvas::staticGet_KEY_NUM7] [::GameInputProcessor new]
        [my jget inputProcessorArray] set [::Canvas::staticGet_KEY_NUM9] [::GameInputProcessor new]
        ::GameInputProcessorUtil::init [my jget inputProcessorArray]
    }
    

    method processInputList {allbinaryLayerManager list} {
        set key 0
        set gameKeyEvent {}
        set size [$list size]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set gameKeyEvent ([[$list jget objectArray] get $index])
            set key [$gameKeyEvent getKey]
            [[my jget inputProcessorArray] get $key] processEvent $allbinaryLayerManager [::GameKeyEvent::staticGet_NONE]
        }
    }
    

    method processInput {allbinaryLayerManager} {
        my processInputList $allbinaryLayerManager [my getGameKeyEventList]
        [my getGameKeyEventList] clear
    }
    

    method paint {graphics} {
        [my jget testInputPaintable] paint $graphics
    }
    

    method implmentsGameInputInterface {} {
        return true
    }
}

namespace eval ::TestingInputSingleton {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::TestingInputSingleton new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::TestingInputSingleton::staticGet_instance]
    }
}


