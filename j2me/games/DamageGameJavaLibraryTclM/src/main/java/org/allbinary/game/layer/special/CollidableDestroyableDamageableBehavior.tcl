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
# package org.allbinary.game.layer.special

oo::class create ::CollidableDestroyableDamageableBehavior {
    superclass ::CollidableBaseBehavior
}

oo::define ::CollidableDestroyableDamageableBehavior {
    method initFields_CollidableDestroyableDamageableBehavior {} {
        my jset damageUtil {}
        my jset damageUtil [::DamageUtil::getInstance]
        return
    }
    

    constructor {collidable} {
        next $collidable
        my initFields_CollidableDestroyableDamageableBehavior
    }
    

    method isCollision {ownerLayer collisionLayer} {
        if {[expr {[[$ownerLayer getGroupInterface] get 0] != [[$collisionLayer getGroupInterface] get 0]}]} {
            return [next $ownerLayer $collisionLayer]
        }
        return false
    }
    

    method collide {ownerLayer collidableInterfaceCompositeInterface} {
        set ownerCollidableDestroyableDamageableLayer $ownerLayer
        set collidableDestroyableDamageableLayer $collidableInterfaceCompositeInterface
        $ownerCollidableDestroyableDamageableLayer damage [$collidableDestroyableDamageableLayer getDamage 0] 0
    }
    

    method isCollisionInterface {ownerLayer collidableInterfaceCompositeInterface} {
        ::ForcedLogUtil::log "No Longer Used" [self]
        return false
    }
    

    method collideInterface {ownerLayer collidableInterfaceCompositeInterface} {
        ::ForcedLogUtil::log "No Longer Used" [self]
    }
}

namespace eval ::CollidableDestroyableDamageableBehavior {
}


