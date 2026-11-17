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

oo::class create ::CollidableAlwaysPickupNeverCollideBehavior {
    superclass ::CollidableNeverCollideBehavior
}

oo::define ::CollidableAlwaysPickupNeverCollideBehavior {
    method initFields_CollidableAlwaysPickupNeverCollideBehavior {} {
        return
    }
    

    constructor {} {
        next true
        my initFields_CollidableAlwaysPickupNeverCollideBehavior
    }
    

    method getCollisionTypeWith {layerInterface} {
        return [[::CollisionTypeFactory::getInstance] jget PICKUP]
    }
}

namespace eval ::CollidableAlwaysPickupNeverCollideBehavior {
}


