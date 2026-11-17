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
# package org.allbinary.game.configuration.feature

oo::class create ::SensorFeatureFactory {
    superclass ::JObject
}

oo::define ::SensorFeatureFactory {
    method initFields_SensorFeatureFactory {} {
        my jset NO_ORIENTATION {}
        my jset ORIENTATION_SENSORS {}
        my jset SIMULATED_ORIENTATION_SENSORS {}
        my jset YAW {}
        my jset YAW_MINUS_RIGHT_PLUS_LEFT {}
        my jset YAW_MINUS_LEFT_PLUS_RIGHT {}
        my jset PITCH {}
        my jset ROLL {}
        my jset NO_ORIENTATION [::SensorFeature new "No Orientation"]
        my jset ORIENTATION_SENSORS [::SensorFeature new "Orientation Sensors"]
        my jset SIMULATED_ORIENTATION_SENSORS [::SensorFeature new "Simulated Orientation Sensors"]
        my jset YAW [::SensorFeature new "Yaw"]
        my jset YAW_MINUS_RIGHT_PLUS_LEFT [::SensorFeature new "Yaw -Right +Left"]
        my jset YAW_MINUS_LEFT_PLUS_RIGHT [::SensorFeature new "Yaw -Left +Right "]
        my jset PITCH [::SensorFeature new "Pitch"]
        my jset ROLL [::SensorFeature new "Roll"]
        return
    }
    
    

    constructor {} {
        next
        my initFields_SensorFeatureFactory
    }
}

namespace eval ::SensorFeatureFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SensorFeatureFactory new]
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
        return [::SensorFeatureFactory::staticGet_instance]
    }
}


