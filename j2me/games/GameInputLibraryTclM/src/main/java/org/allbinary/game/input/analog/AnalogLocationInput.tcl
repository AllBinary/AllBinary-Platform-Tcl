# Generated Code Do Not Modify
# package org.allbinary.game.input.analog

oo::class create ::AnalogLocationInput {
    superclass ::JObject
}

oo::define ::AnalogLocationInput {
    method initFields_AnalogLocationInput {} {
        my jset playerId 0
        my jset customGPoint {}
        my jset rz 0
        my jset rightTrigger 0
        my jset leftTrigger 0
        
        
        my jset rz 0
        my jset rightTrigger 0
        my jset leftTrigger 0
        return
    }
    

    constructor {playerId} {
        next
        my initFields_AnalogLocationInput
        my jset playerId $playerId
        my jset customGPoint [::CustomGPoint new 0 0 0]
    }
    

    method getPlayerId {} {
        return [my jget playerId]
    }
    

    method getCustomGPoint {} {
        return [my jget customGPoint]
    }
    

    method getRz {} {
        return [my jget rz]
    }
    

    method setRz {rz} {
        my jset rz $rz
    }
    

    method getRightTrigger {} {
        return [my jget rightTrigger]
    }
    

    method setRightTrigger {rightTrigger} {
        my jset rightTrigger $rightTrigger
    }
    

    method getLeftTrigger {} {
        return [my jget leftTrigger]
    }
    

    method setLeftTrigger {leftTrigger} {
        my jset leftTrigger $leftTrigger
    }
}

namespace eval ::AnalogLocationInput {
    variable NULL_ANALOG_LOCATION_INPUTValue {}
    variable NULL_ANALOG_LOCATION_INPUTSet 0
    proc staticGet_NULL_ANALOG_LOCATION_INPUT {} {
        variable NULL_ANALOG_LOCATION_INPUTValue
        variable NULL_ANALOG_LOCATION_INPUTSet
        if {!$NULL_ANALOG_LOCATION_INPUTSet} {
            set NULL_ANALOG_LOCATION_INPUTSet 1
            set NULL_ANALOG_LOCATION_INPUTValue [::AnalogLocationInput new [expr {-1}]]
        }
        return $NULL_ANALOG_LOCATION_INPUTValue
    }
    proc staticSet_NULL_ANALOG_LOCATION_INPUT {value} {
        variable NULL_ANALOG_LOCATION_INPUTValue
        variable NULL_ANALOG_LOCATION_INPUTSet
        set NULL_ANALOG_LOCATION_INPUTSet 1
        set NULL_ANALOG_LOCATION_INPUTValue $value
    }
}


