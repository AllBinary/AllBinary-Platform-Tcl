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
# package org.allbinary.game.ag.layer.hud.basic

oo::class create ::HudResources {
    superclass ::JObject
}

oo::define ::HudResources {
    method initFields_HudResources {} {
        my jset RESOURCE_LIFE {}
        my jset RESOURCE_HEALTH {}
        my jset RESOURCE_LIFE "/hud_life_10_by_10.png"
        my jset RESOURCE_HEALTH "/hud_health_10_by_10.png"
        return
    }
    
    

    constructor {} {
        next
        my initFields_HudResources
    }
}

namespace eval ::HudResources {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::HudResources new]
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
        return [::HudResources::staticGet_instance]
    }
}


