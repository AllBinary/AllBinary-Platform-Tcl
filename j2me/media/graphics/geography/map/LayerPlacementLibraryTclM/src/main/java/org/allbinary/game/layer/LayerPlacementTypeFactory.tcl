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
# package org.allbinary.game.layer

oo::class create ::LayerPlacementTypeFactory {
    superclass ::JObject
}

oo::define ::LayerPlacementTypeFactory {
    method initFields_LayerPlacementTypeFactory {} {
        my jset MAP {}
        my jset LEFT {}
        my jset DOWN {}
        my jset UP {}
        my jset RIGHT {}
        my jset MAP [::LayerPlacementType new [::Integer::staticGet_MAX_VALUE]]
        my jset LEFT [::LayerPlacementType new [[[::DirectionFactory::getInstance] jget LEFT] getValue]]
        my jset DOWN [::LayerPlacementType new [[[::DirectionFactory::getInstance] jget DOWN] getValue]]
        my jset UP [::LayerPlacementType new [[[::DirectionFactory::getInstance] jget UP] getValue]]
        my jset RIGHT [::LayerPlacementType new [[[::DirectionFactory::getInstance] jget RIGHT] getValue]]
        return
    }

    constructor {} {
        next
        my initFields_LayerPlacementTypeFactory
    }
    
}

namespace eval ::LayerPlacementTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LayerPlacementTypeFactory new]
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
        return [::LayerPlacementTypeFactory::staticGet_instance]
    }
}


