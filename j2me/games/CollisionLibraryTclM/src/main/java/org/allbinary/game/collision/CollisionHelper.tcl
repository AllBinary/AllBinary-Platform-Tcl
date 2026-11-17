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

oo::class create ::CollisionHelper {
    superclass ::JObject
}

oo::define ::CollisionHelper {
    method initFields_CollisionHelper {} {
        my jset sourceLayerInterface {}
        
        return
    }
    

    constructor {sourceLayerInterface} {
        next
        my initFields_CollisionHelper
        my jset sourceLayerInterface $sourceLayerInterface
    }
    

    method isCollidable {layerInterface} {
        return true
    }
    

    method getOwnerLayerInterface {} {
        return [my jget sourceLayerInterface]
    }
    

    method setOwnerLayerInterface {sourceLayerInterface} {
        my jset sourceLayerInterface $sourceLayerInterface
    }
}

namespace eval ::CollisionHelper {
}


