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

oo::class create ::LayerCollisionUtil {
    superclass ::JObject
}

oo::define ::LayerCollisionUtil {
    method initFields_LayerCollisionUtil {} {
        my jset collisionProcessor {}
        my jset collisionProcessor {}
        return
    }
    
    

    constructor {} {
        next
        my initFields_LayerCollisionUtil
        set features [::Features::getInstance]
        set gameFeatureFactory [::GameFeatureFactory::getInstance]
        if {[expr {[[::OpenGLFeatureUtil::getInstance] isAnyThreed] && [expr {![$features isFeature [$gameFeatureFactory jget COLLISIONS_FORCED_TWO_DIMENSIONAL]]}]}]} {
            my jset collisionProcessor [::CollisionThreedProcessor new]
        } else {
            my jset collisionProcessor [::Collision2DProcessor new]
        }
    }
    

    method isCollision {myLayer myLayer2} {
        return [[my jget collisionProcessor] isCollision $myLayer $myLayer2]
    }
}

namespace eval ::LayerCollisionUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LayerCollisionUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::LayerCollisionUtil::staticGet_instance]
    }
}


