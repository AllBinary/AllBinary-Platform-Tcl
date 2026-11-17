# Generated Code Do Not Modify
# package org.allbinary.game.layer.drop

oo::class create ::PlacedLayerFactory {
    superclass ::JObject
}

oo::define ::PlacedLayerFactory {
    method initFields_PlacedLayerFactory {} {
        my jset list {}
        my jset basicArrayListUtil {}
        my jset list [::BasicArrayListD new]
        my jset basicArrayListUtil [::BasicArrayListUtil::getInstance]
        return
    }
    

    constructor {} {
        next
        my initFields_PlacedLayerFactory
    }
    

    method clear {} {
        [my jget list] clear
    }
    
    

    method getSize {} {
        return [[my jget list] size]
    }
    

    method getRandomInstance {} {
        return [[my jget basicArrayListUtil] getRandom [my jget list]]
    }
    

    method add {layerInterfaceFactoryInterface} {
        [my jget list] add $layerInterfaceFactoryInterface
    }
}

namespace eval ::PlacedLayerFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PlacedLayerFactory new]
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
        return [::PlacedLayerFactory::staticGet_instance]
    }
}


