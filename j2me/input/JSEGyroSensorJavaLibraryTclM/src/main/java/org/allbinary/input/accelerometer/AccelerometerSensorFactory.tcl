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
# package org.allbinary.input.accelerometer

oo::class create ::AccelerometerSensorFactory {
    superclass ::JObject
}

oo::define ::AccelerometerSensorFactory {
    method initFields_AccelerometerSensorFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_AccelerometerSensorFactory
    }
    
    
}

namespace eval ::AccelerometerSensorFactory {
    variable allBinaryAccelerometerSensorValue {}
    variable allBinaryAccelerometerSensorSet 0
    proc staticGet_allBinaryAccelerometerSensor {} {
        variable allBinaryAccelerometerSensorValue
        variable allBinaryAccelerometerSensorSet
        if {!$allBinaryAccelerometerSensorSet} {
            set allBinaryAccelerometerSensorSet 1
            set allBinaryAccelerometerSensorValue {}
        }
        return $allBinaryAccelerometerSensorValue
    }
    proc staticSet_allBinaryAccelerometerSensor {value} {
        variable allBinaryAccelerometerSensorValue
        variable allBinaryAccelerometerSensorSet
        set allBinaryAccelerometerSensorSet 1
        set allBinaryAccelerometerSensorValue $value
    }
    proc init {} {
        set features [::Features::getInstance]
        set sensorFeatureFactory [::SensorFeatureFactory::getInstance]
        if {[$features isFeature [$sensorFeatureFactory jget ORIENTATION_SENSORS]]} {
            error [jexception Exception "No Orientation Sensors"]
        } elseif {[$features isFeature [$sensorFeatureFactory jget SIMULATED_ORIENTATION_SENSORS]]} {
            error [jexception Exception "No Simulation Sensors"]
        } elseif {[$features isFeature [$sensorFeatureFactory jget NO_ORIENTATION]]} {
            ::AccelerometerSensorFactory::staticSet_allBinaryAccelerometerSensor [::NoAccelerometerSensor new]
        } else {
            error [jexception Exception "Not Such SensorFeature"]
        }
    }
    proc getInstance {} {
        return [::AccelerometerSensorFactory::staticGet_allBinaryAccelerometerSensor]
    }
}


