# Generated Code Do Not Modify
# package org.allbinary.game.configuration.feature

oo::class create ::MultiPlayerGameFeatureFactory {
    superclass ::JObject
}

oo::define ::MultiPlayerGameFeatureFactory {
    method initFields_MultiPlayerGameFeatureFactory {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_MultiPlayerGameFeatureFactory
    }
    

    method addCommands {anyType} {
        set gameCommandsFactory [::GameCommandsFactory::getInstance]
        set canvas $anyType
        $canvas addCommand [$gameCommandsFactory jget QUIT_COMMAND]
    }
}

namespace eval ::MultiPlayerGameFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::MultiPlayerGameFeatureFactory new]
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
        return [::MultiPlayerGameFeatureFactory::staticGet_instance]
    }
}


