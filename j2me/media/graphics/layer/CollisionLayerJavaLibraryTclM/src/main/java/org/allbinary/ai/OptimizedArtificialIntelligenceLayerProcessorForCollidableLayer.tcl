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
# package org.allbinary.ai

oo::class create ::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer {
    superclass ::LayerProcessor
}

oo::define ::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer {
    method initFields_OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer {} {
        return
    }
    

    constructor {} {
        next [::OptimizedArtificialIntelligenceLayerManager new]
        my initFields_OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer
    }
    

    method processAt {allBinaryLayerManager layerInterface index} {
        set artificialIntelligenceCompositeInterface $layerInterface
        [$artificialIntelligenceCompositeInterface getArtificialIntelligenceInterface] processAI $allBinaryLayerManager
    }
    

    method isProcessorLayer {layerInterface} {
        if {[$layerInterface implmentsArtificialIntelligenceCompositeInterface]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::OptimizedArtificialIntelligenceLayerProcessorForCollidableLayer {
}


