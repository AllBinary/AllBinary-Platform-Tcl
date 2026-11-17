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

oo::class create ::SourceCollisionHelper {
    superclass ::CollisionHelper
}

oo::define ::SourceCollisionHelper {
    method initFields_SourceCollisionHelper {} {
        return
    }
    

    constructor {layerInterface} {
        next $layerInterface
        my initFields_SourceCollisionHelper
    }
    

    method isCollidable {layerInterface} {
        if {[expr {[my jget sourceLayerInterface] ne $layerInterface}]} {
            return true
        }
        return false
    }
}

namespace eval ::SourceCollisionHelper {
}


