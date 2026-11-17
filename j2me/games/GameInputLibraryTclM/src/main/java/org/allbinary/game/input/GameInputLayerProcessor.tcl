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

oo::class create ::GameInputLayerProcessor {
    superclass ::LayerProcessor
}

oo::define ::GameInputLayerProcessor {
    method initFields_GameInputLayerProcessor {} {
        return
    }
    

    constructor {} {
        next [::GameInputLayerManager new]
        my initFields_GameInputLayerProcessor
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

namespace eval ::GameInputLayerProcessor {
}


