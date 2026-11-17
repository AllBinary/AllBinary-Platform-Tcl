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
# package org.allbinary.game.combat.canvas

oo::class create ::CombatGameCanvas {
    superclass ::AllBinaryGameCanvas
}

oo::define ::CombatGameCanvas {
    method initFields_CombatGameCanvas {} {
        return
    }
    

    constructor {cmdListener gameLayerManager highScoresFactoryInterface gameInitializationInterfaceFactoryInterface buffered} {
        next $cmdListener $gameLayerManager $highScoresFactoryInterface $gameInitializationInterfaceFactoryInterface $buffered
        my initFields_CombatGameCanvas
    }
    

    method CombatGameCanvas_init {} {
        [::DestroyEventCircularStaticPool::getInstance] init [self]
        [::ProgressCanvasFactory::getInstance] addNormalPortion 50 "Destroy Events"
    }
    

    method initApp {abeClientInformation} {
        my CombatGameCanvas_init
        next $abeClientInformation
    }
    

    method initConfigurablePortion {portion} {
        ::DestroyedLayerProcessor::init
        [::ProgressCanvasFactory::getInstance] addNormalPortion $portion "Basic Processors"
        set features [::Features::getInstance]
        set gameFeatureFactory [::GameFeatureFactory::getInstance]
        if {[expr {[$features isFeature [$gameFeatureFactory jget DROPPED_ITEMS]] && [$features isFeature [$gameFeatureFactory jget DROPPED_ITEMS_FROM_DEATH]]}]} {
            ::CombatGameCanvas::staticSet_basicLayerProcessor [jarray 2 {}]
            [::CombatGameCanvas::staticGet_basicLayerProcessor] set 0 [::DestroyedLayerProcessor::getInstance]
            [::CombatGameCanvas::staticGet_basicLayerProcessor] set 1 [::DropLayerProcessor::getInstance]
        } else {
            ::CombatGameCanvas::staticSet_basicLayerProcessor [jarray 1 {}]
            [::CombatGameCanvas::staticGet_basicLayerProcessor] set 0 [::DestroyedLayerProcessor::getInstance]
        }
    }
    

    method processPlayingGame {} {
        next
        for {set index [[::CombatGameCanvas::staticGet_basicLayerProcessor] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[::CombatGameCanvas::staticGet_basicLayerProcessor] get $index] process [my jget gameLayerManager]
        }
    }
    

    method cleanupGame {} {
        next
        for {set index [[::CombatGameCanvas::staticGet_basicLayerProcessor] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            [[[::CombatGameCanvas::staticGet_basicLayerProcessor] get $index] getList] clear
        }
        [::GroupLayerManagerListener::getInstance] clear
        [::GroupLayerManagerListener::getInstance] log
        [::DestroyedEventHandler::getInstance] removeAllListeners
        my cleanupManager
    }
    

    method cleanupManager {} {
        [my jget gameLayerManager] cleanup
    }
}

namespace eval ::CombatGameCanvas {
    variable basicLayerProcessorValue {}
    variable basicLayerProcessorSet 0
    proc staticGet_basicLayerProcessor {} {
        variable basicLayerProcessorValue
        variable basicLayerProcessorSet
        if {!$basicLayerProcessorSet} {
            set basicLayerProcessorSet 1
            set basicLayerProcessorValue [jarray 0 {}]
        }
        return $basicLayerProcessorValue
    }
    proc staticSet_basicLayerProcessor {value} {
        variable basicLayerProcessorValue
        variable basicLayerProcessorSet
        set basicLayerProcessorSet 1
        set basicLayerProcessorValue $value
    }
}


