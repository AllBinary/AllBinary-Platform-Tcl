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

oo::class create ::CollidableHelperFactory {
    superclass ::JObject
}

oo::define ::CollidableHelperFactory {
    method initFields_CollidableHelperFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_CollidableHelperFactory
    }
    
}

namespace eval ::CollidableHelperFactory {
    proc getInstance {} {
        if {[[::Features::getInstance] isFeature [[::GameFeatureFactory::getInstance] jget COLLISIONS_WITH_SOURCE]]} {
            return [::CollisionHelper new [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]]
        } else {
            return [::SourceCollisionHelper new [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]]
        }
    }
}


