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
# package org.allbinary.game.combat.damage

oo::class create ::ExplosionResources {
    superclass ::JObject
}

oo::define ::ExplosionResources {
    method initFields_ExplosionResources {} {
        my jset EXPLOSION_90_RESOURCE {}
        my jset EXPLOSION_60_RESOURCE {}
        my jset HALF_EXPLOSION_RESOURCE {}
        my jset THIRD_EXPLOSION_RESOURCE {}
        my jset EXPLOSION_90_RESOURCE "/explosion_sprite_90_by_90.png"
        my jset EXPLOSION_60_RESOURCE "/explosion_sprite_60_by_60.png"
        my jset HALF_EXPLOSION_RESOURCE "/explosion_sprite_30_by_30.png"
        my jset THIRD_EXPLOSION_RESOURCE "/explosion_sprite_15_by_15.png"
        return
    }
    
    

    constructor {} {
        next
        my initFields_ExplosionResources
    }
}

namespace eval ::ExplosionResources {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::ExplosionResources new]
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
        return [::ExplosionResources::staticGet_instance]
    }
}


