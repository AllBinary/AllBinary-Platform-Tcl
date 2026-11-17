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

oo::class create ::CollidableCharacterBehavior {
    superclass ::CollidableDestroyableDamageableBehavior
}

oo::define ::CollidableCharacterBehavior {
    method initFields_CollidableCharacterBehavior {} {
        return
    }
    

    constructor {collidable} {
        next $collidable
        my initFields_CollidableCharacterBehavior
    }
    

    method collide {ownerLayer collidableInterfaceCompositeInterface} {
        set collisionTypeFactory [::CollisionTypeFactory::getInstance]
        set collisionType [[$collidableInterfaceCompositeInterface getCollidableInferface] getCollisionTypeWith $ownerLayer]
        if {[expr {$collisionType eq [$collisionTypeFactory jget PICKUP]}]} {
            set collidableDestroyableDamageableLayer $ownerLayer
            [$collidableDestroyableDamageableLayer getPickupBehavior] doPickupLayer $collidableInterfaceCompositeInterface
        } else {
            next $ownerLayer $collidableInterfaceCompositeInterface
        }
    }
    

    method collideInterface {ownerLayer collidableInterfaceCompositeInterface} {
        ::ForcedLogUtil::log [[my jget commonStrings] jget NOT_IMPLEMENTED] [self]
    }
}

namespace eval ::CollidableCharacterBehavior {
}


