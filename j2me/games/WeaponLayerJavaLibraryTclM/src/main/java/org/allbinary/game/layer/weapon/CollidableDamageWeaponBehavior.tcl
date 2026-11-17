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
# package org.allbinary.game.layer.weapon

oo::class create ::CollidableDamageWeaponBehavior {
    superclass ::CollidableDestroyableDamageableBehavior
}

oo::define ::CollidableDamageWeaponBehavior {
    method initFields_CollidableDamageWeaponBehavior {} {
        my jset collided false
        my jset collisionHelper {}
        my jset collided false
        
        return
    }
    

    constructor {collidable} {
        next $collidable
        my initFields_CollidableDamageWeaponBehavior
        my setCollided false
        my setCollidable true
        my jset collisionHelper [::CollidableHelperFactory::getInstance]
    }
    

    method init {sourceLayerInterface} {
        my setCollided false
        [my jget collisionHelper] setOwnerLayerInterface $sourceLayerInterface
    }
    

    method isCollision {ownerLayer collisionLayer} {
        if {[[my jget collisionHelper] isCollidable $collisionLayer]} {
            if {[expr {[[$ownerLayer getGroupInterface] get 0] != [[$collisionLayer getGroupInterface] get 0]}]} {
                return [next $ownerLayer $collisionLayer]
            }
        }
        return false
    }
    

    method collide {ownerLayer collisionLayer} {
        next $ownerLayer $collisionLayer
        my jset collided true
    }
    

    method isCollisionInterface {ownerLayer collidableInterfaceCompositeInterface} {
        if {[[my jget collisionHelper] isCollidable $collidableInterfaceCompositeInterface]} {
            set layerInterface $collidableInterfaceCompositeInterface
            if {[expr {[[$ownerLayer getGroupInterface] get 0] != [[$layerInterface getGroupInterface] get 0]}]} {
                if {[[my jget layerCollisionUtil] isCollision $ownerLayer $layerInterface]} {
                    return true
                }
            }
        }
        return false
    }
    

    method collideInterface {ownerLayer collidableInterfaceCompositeInterface} {
        [my jget damageUtil] process $ownerLayer $collidableInterfaceCompositeInterface
        my jset collided true
    }
    

    method getCollisionTypeWith {layerInterface} {
        return [[::CollisionTypeFactory::getInstance] jget COLLISION]
    }
    

    method isCollided {} {
        return [my jget collided]
    }
    

    method setCollided {collided} {
        my jset collided $collided
    }
}

namespace eval ::CollidableDamageWeaponBehavior {
}


