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

oo::class create ::AllBinaryCollisionManager {
    superclass ::JObject
}

oo::define ::AllBinaryCollisionManager {
    method initFields_AllBinaryCollisionManager {} {
        return
    }
    

    constructor {} {
        next
        my initFields_AllBinaryCollisionManager
    }
    
    

    method process {layerManager collidableInterfaceCompositeInterface startIndex} {
        set size [$layerManager getSize]
        for {set index [jint [expr {$startIndex + 1}]]} {[expr {$index < $size}]} {jpostincr index 1} {
            set collidableInterfaceCompositeInterface2 [$layerManager getLayerAt $index]
            my collide $layerManager $collidableInterfaceCompositeInterface $collidableInterfaceCompositeInterface2
        }
    }
    

    method collide {layerManager collidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2} {
        set collidableBase2 [$collidableInterfaceCompositeInterface2 getCollidableInferface]
        set collidableBase [$collidableInterfaceCompositeInterface getCollidableInferface]
        if {[$collidableBase2 isCollidable $collidableInterfaceCompositeInterface]} {
            if {[$collidableBase isCollisionInterface $collidableInterfaceCompositeInterface $collidableInterfaceCompositeInterface2]} {
                $collidableBase collideInterface $collidableInterfaceCompositeInterface $collidableInterfaceCompositeInterface2
                $collidableBase2 collideInterface $collidableInterfaceCompositeInterface $collidableInterfaceCompositeInterface
            }
        }
    }
}

namespace eval ::AllBinaryCollisionManager {
    variable allBinaryCollisionManagerValue {}
    variable allBinaryCollisionManagerSet 0
    proc staticGet_allBinaryCollisionManager {} {
        variable allBinaryCollisionManagerValue
        variable allBinaryCollisionManagerSet
        if {!$allBinaryCollisionManagerSet} {
            set allBinaryCollisionManagerSet 1
            set allBinaryCollisionManagerValue [::AllBinaryCollisionManager new]
        }
        return $allBinaryCollisionManagerValue
    }
    proc staticSet_allBinaryCollisionManager {value} {
        variable allBinaryCollisionManagerValue
        variable allBinaryCollisionManagerSet
        set allBinaryCollisionManagerSet 1
        set allBinaryCollisionManagerValue $value
    }
    proc getInstance {} {
        return [::AllBinaryCollisionManager::staticGet_allBinaryCollisionManager]
    }
}


