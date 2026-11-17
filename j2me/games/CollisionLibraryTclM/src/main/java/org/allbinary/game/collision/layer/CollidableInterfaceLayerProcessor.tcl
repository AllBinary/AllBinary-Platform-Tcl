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
# package org.allbinary.game.collision.layer

oo::class create ::CollidableInterfaceLayerProcessor {
    superclass ::LayerProcessor
}

oo::define ::CollidableInterfaceLayerProcessor {
    method initFields_CollidableInterfaceLayerProcessor {} {
        return
    }
    

    constructor {} {
        next [::CollidableInterfaceLayerManager new]
        my initFields_CollidableInterfaceLayerProcessor
    }
    

    method processAt {allBinaryLayerManager layerInterface index} {
        set collidableInterfaceCompositeInterface $layerInterface
        if {[[$collidableInterfaceCompositeInterface getCollidableInferface] isCollidable $collidableInterfaceCompositeInterface]} {
            [::AllBinaryCollisionManager::getInstance] process [my getLayerManager] $collidableInterfaceCompositeInterface $index
        }
    }
    

    method isProcessorLayer {layerInterface} {
        if {[$layerInterface implmentsCollidableInterface]} {
            return true
        } else {
            return false
        }
    }
}

namespace eval ::CollidableInterfaceLayerProcessor {
}


