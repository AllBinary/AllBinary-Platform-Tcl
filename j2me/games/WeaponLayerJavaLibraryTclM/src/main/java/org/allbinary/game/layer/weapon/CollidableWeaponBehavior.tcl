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

oo::class create ::CollidableWeaponBehavior {
    superclass ::CollidableDestroyableDamageableBehavior
}

oo::define ::CollidableWeaponBehavior {
    method initFields_CollidableWeaponBehavior {} {
        my jset collided false
        my jset collisionHelper {}
        my jset collided false
        
        return
    }
    
    

    constructor {collidable} {
        next $collidable
        my initFields_CollidableWeaponBehavior
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
        set ownerDamageableInterface $ownerLayer
        set damageableInterface $collidableInterfaceCompositeInterface
        [my jget damageUtil] process $ownerDamageableInterface $damageableInterface
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

namespace eval ::CollidableWeaponBehavior {
    variable NULL_COLLIDABLE_WEAPON_BEHAVIORValue {}
    variable NULL_COLLIDABLE_WEAPON_BEHAVIORSet 0
    proc staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR {} {
        variable NULL_COLLIDABLE_WEAPON_BEHAVIORValue
        variable NULL_COLLIDABLE_WEAPON_BEHAVIORSet
        if {!$NULL_COLLIDABLE_WEAPON_BEHAVIORSet} {
            set NULL_COLLIDABLE_WEAPON_BEHAVIORSet 1
            set NULL_COLLIDABLE_WEAPON_BEHAVIORValue [[::NullUtil::getInstance] jget NULL_OBJECT]
        }
        return $NULL_COLLIDABLE_WEAPON_BEHAVIORValue
    }
    proc staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR {value} {
        variable NULL_COLLIDABLE_WEAPON_BEHAVIORValue
        variable NULL_COLLIDABLE_WEAPON_BEHAVIORSet
        set NULL_COLLIDABLE_WEAPON_BEHAVIORSet 1
        set NULL_COLLIDABLE_WEAPON_BEHAVIORValue $value
    }
    proc getNullInstance {} {
        if {[expr {[::CollidableWeaponBehavior::staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::CollidableWeaponBehavior::staticSet_NULL_COLLIDABLE_WEAPON_BEHAVIOR [::CollidableWeaponBehavior new false]
        }
        return [::CollidableWeaponBehavior::staticGet_NULL_COLLIDABLE_WEAPON_BEHAVIOR]
    }
}


