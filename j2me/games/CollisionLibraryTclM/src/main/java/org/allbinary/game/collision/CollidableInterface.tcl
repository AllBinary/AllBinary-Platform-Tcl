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

oo::class create ::CollidableInterface {
    superclass ::JObject
}

oo::define ::CollidableInterface {
    method initFields_CollidableInterface {} {
        return
    }
    

    method isCollidable {ownerLayer} {
        error [jexception AbstractMethodError isCollidable]
    }
    

    method isCollision {ownerLayer collidableInterfaceCompositeInterface} {
        error [jexception AbstractMethodError isCollision]
    }
    

    method collide {ownerLayer collidableInterfaceCompositeInterface} {
        error [jexception AbstractMethodError collide]
    }
    

    method getCollisionTypeWith {layerInterface} {
        error [jexception AbstractMethodError getCollisionTypeWith]
    }
}

namespace eval ::CollidableInterface {
}


