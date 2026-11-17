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

oo::class create ::LayerProcessor {
    superclass ::JObject
}

oo::define ::LayerProcessor {
    method initFields_LayerProcessor {} {
        my jset commonStrings {}
        my jset layerManager {}
        my jset commonStrings [::CommonStrings::getInstance]
        
        return
    }
    

    constructor {layerManager} {
        next
        my initFields_LayerProcessor
        my jset layerManager $layerManager
    }
    

    method processAt {allBinaryLayerManager layerInterface index} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method isProcessorLayer {layerInterface} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method getLayerManager {} {
        return [my jget layerManager]
    }
    

    method process {allBinaryLayerManager} {
        set layerManager [my getLayerManager]
        set size [$layerManager getSize]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            my processAt $allBinaryLayerManager [$layerManager getLayerAt $index] $index
        }
    }
}

namespace eval ::LayerProcessor {
}


