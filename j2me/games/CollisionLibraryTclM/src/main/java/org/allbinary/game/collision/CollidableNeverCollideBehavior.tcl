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

oo::class create ::CollidableNeverCollideBehavior {
    superclass ::CollidableBaseBehavior
}

oo::define ::CollidableNeverCollideBehavior {
    method initFields_CollidableNeverCollideBehavior {} {
        return
    }
    

    constructor {isCollidable} {
        next $isCollidable
        my initFields_CollidableNeverCollideBehavior
    }
    

    method isCollision {ownerLayer allbinaryCollidableLayer} {
        return false
    }
    

    method collide {ownerLayer allbinaryCollidableLayer} {
    }
    

    method collideInterface {ownerLayer collidableInterfaceCompositeInterface} {
    }
    

    method isCollisionInterface {ownerLayer collidableInterfaceCompositeInterface} {
        return false
    }
}

namespace eval ::CollidableNeverCollideBehavior {
}


