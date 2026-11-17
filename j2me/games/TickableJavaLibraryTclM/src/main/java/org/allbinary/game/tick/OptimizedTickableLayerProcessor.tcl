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
# package org.allbinary.game.tick

oo::class create ::OptimizedTickableLayerProcessor {
    superclass ::LayerProcessor
}

oo::define ::OptimizedTickableLayerProcessor {
    method initFields_OptimizedTickableLayerProcessor {} {
        return
    }
    

    constructor {} {
        next [::OptimizedTickableLayerManager new]
        my initFields_OptimizedTickableLayerProcessor
    }
    

    method processAt {allBinaryLayerManager layerInterface index} {
        set tickableInterface $layerInterface
        $tickableInterface processTick $allBinaryLayerManager
    }
    

    method isProcessorLayer {layerInterface} {
        if {[$layerInterface implmentsTickableInterface]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::OptimizedTickableLayerProcessor {
}


