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
# package org.allbinary.game.collision

oo::class create ::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer {
    superclass ::LayerProcessor
}

oo::define ::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer {
    method initFields_OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer {} {
        return
    }
    

    constructor {} {
        next [::OptimizedAllBinaryCollisionLayerManager new]
        my initFields_OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer
    }
    

    method processAt {allBinaryLayerManager layerInterface startIndex} {
        set collidableInterfaceCompositeInterface $layerInterface
        set collidableBase [$collidableInterfaceCompositeInterface getCollidableInferface]
        if {[$collidableBase isCollidable $collidableInterfaceCompositeInterface]} {
            set layerManager [my getLayerManager]
            set size [$layerManager getSize]
            set collidableInterfaceCompositeInterface2 {}
            set collidableBase2 {}
            for {set index [jint [expr {$startIndex + 1}]]} {[expr {$index < $size}]} {jpostincr index 1} {
                set collidableInterfaceCompositeInterface2 [$layerManager getLayerAt $index]
                set collidableBase2 [$collidableInterfaceCompositeInterface2 getCollidableInferface]
                if {[expr {[$collidableBase2 isCollidable $collidableInterfaceCompositeInterface] && [$collidableBase isCollision $collidableInterfaceCompositeInterface $collidableInterfaceCompositeInterface2]}]} {
                    $collidableBase collide $collidableInterfaceCompositeInterface $collidableInterfaceCompositeInterface2
                    $collidableBase2 collide $collidableInterfaceCompositeInterface2 $collidableInterfaceCompositeInterface
                }
            }
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

namespace eval ::OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer {
}


