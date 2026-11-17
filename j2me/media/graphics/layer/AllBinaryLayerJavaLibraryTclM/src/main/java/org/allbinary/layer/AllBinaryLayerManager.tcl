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
# package org.allbinary.layer

oo::class create ::AllBinaryLayerManager {
    superclass ::LayerManager
}

oo::define ::AllBinaryLayerManager {
    method initFields_AllBinaryLayerManager {} {
        my jset layerManagerEventHandler {}
        my jset createLayerManagerEvent {}
        my jset deleteLayerManagerEvent {}
        my jset basicLayerProcessorArray {}
        my jset layerManagerEventHandler [::LayerManagerEventHandler::getInstance]
        my jset createLayerManagerEvent [::LayerManagerEvent new [self] [[my jget layerManagerEventHandler] jget CREATE]]
        my jset deleteLayerManagerEvent [::LayerManagerEvent new [self] [[my jget layerManagerEventHandler] jget DELETE]]
        my jset basicLayerProcessorArray [jarray 0 {}]
        return
    }
    

    constructor {} {
        next [::LayerManagerNoDebug::getInstance]
        my initFields_AllBinaryLayerManager
    }
    

    method getLayerProcessorArray {} {
        return [my jget basicLayerProcessorArray]
    }
    

    method setLayerProcessorArray {layerProcessorArray} {
        my jset basicLayerProcessorArray $layerProcessorArray
    }
    

    method log {} {
        set size [[my jget basicLayerProcessorArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerProcessorInterface [[my jget basicLayerProcessorArray] get $index]
        }
    }
    

    method append {layerInterface} {
        if {[expr {![my contains $layerInterface]}]} {
            my appendProcessors $layerInterface
            next $layerInterface
        }
    }
    

    method appendAt {layerInterface index} {
        if {[expr {![my contains $layerInterface]}]} {
            my appendProcessors $layerInterface
            next $layerInterface $index
        }
    }
    

    method appendProcessors {layerInterface} {
        [my jget createLayerManagerEvent] setLayerInterface $layerInterface
        [my jget layerManagerEventHandler] fireEvent [my jget createLayerManagerEvent]
        set layerProcessorInterface {}
        for {set index [[my jget basicLayerProcessorArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set layerProcessorInterface [[my jget basicLayerProcessorArray] get $index]
            if {[$layerProcessorInterface isProcessorLayer $layerInterface]} {
                [$layerProcessorInterface getLayerManager] append $layerInterface
            }
        }
    }
    

    method remove {layerInterface} {
        [my jget deleteLayerManagerEvent] setLayerInterface $layerInterface
        [my jget layerManagerEventHandler] fireDeleteEvent [my jget deleteLayerManagerEvent]
        set layerProcessorInterface {}
        for {set index [[my jget basicLayerProcessorArray] length]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set layerProcessorInterface [[my jget basicLayerProcessorArray] get $index]
            [$layerProcessorInterface getLayerManager] remove $layerInterface
        }
        next $layerInterface
    }
    

    method process {} {
        set layerProcessorInterface {}
        set size [[my jget basicLayerProcessorArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerProcessorInterface [[my jget basicLayerProcessorArray] get $index]
            $layerProcessorInterface process [self]
        }
    }
    

    method cleanup {} {
        set layerProcessorInterface {}
        set size [[my jget basicLayerProcessorArray] length]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            set layerProcessorInterface [[my jget basicLayerProcessorArray] get $index]
            [$layerProcessorInterface getLayerManager] cleanup
        }
        next
    }
}

namespace eval ::AllBinaryLayerManager {
}


