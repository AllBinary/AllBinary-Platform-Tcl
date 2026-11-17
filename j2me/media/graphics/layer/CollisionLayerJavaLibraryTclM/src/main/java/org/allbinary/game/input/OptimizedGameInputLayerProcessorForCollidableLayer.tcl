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

oo::class create ::OptimizedGameInputLayerProcessorForCollidableLayer {
    superclass ::LayerProcessor
}

oo::define ::OptimizedGameInputLayerProcessorForCollidableLayer {
    method initFields_OptimizedGameInputLayerProcessorForCollidableLayer {} {
        return
    }
    

    constructor {} {
        next [::OptimizedGameInputLayerManager new]
        my initFields_OptimizedGameInputLayerProcessorForCollidableLayer
    }
    

    method processAt {allBinaryLayerManager layerInterface index} {
        set gameInputInterface $layerInterface
        $gameInputInterface processInput $allBinaryLayerManager
    }
    

    method isProcessorLayer {layerInterface} {
        if {[$layerInterface implmentsGameInputInterface]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::OptimizedGameInputLayerProcessorForCollidableLayer {
}


