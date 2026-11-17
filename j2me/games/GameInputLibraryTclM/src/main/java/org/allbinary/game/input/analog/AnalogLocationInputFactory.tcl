# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

oo::class create ::AnalogLocationInputFactory {
    superclass ::JObject
}

oo::define ::AnalogLocationInputFactory {
    method initFields_AnalogLocationInputFactory {} {
        my jset list {}
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AnalogLocationInputFactory
    }
    

    method addPlayer {playerInputId} {
        set analogLocationInput [::AnalogLocationInput::staticGet_NULL_ANALOG_LOCATION_INPUT]
        if {[expr {$playerInputId < [[my jget list] size]}]} {
            set analogLocationInput [[my jget list] get $playerInputId]
        }
        if {[expr {$analogLocationInput eq [::AnalogLocationInput::staticGet_NULL_ANALOG_LOCATION_INPUT]}]} {
            set analogLocationInput [::AnalogLocationInput new $playerInputId]
            [my jget list] add $analogLocationInput
        }
    }
    

    method getInstanceForPlayer {playerInputId} {
        return [[my jget list] get $playerInputId]
    }
    

    method getList {} {
        return [my jget list]
    }
}

namespace eval ::AnalogLocationInputFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AnalogLocationInputFactory new]
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
        return [::AnalogLocationInputFactory::staticGet_instance]
    }
}


