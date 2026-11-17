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
# package org.allbinary.input.gyro

oo::class create ::AccelerometerSensorUpdateProcessor {
    superclass ::Processor
}

oo::define ::AccelerometerSensorUpdateProcessor {
    method initFields_AccelerometerSensorUpdateProcessor {} {
        return
    }

    constructor {} {
        next
        my initFields_AccelerometerSensorUpdateProcessor
    }
    

    method process {} {
        set sensorFeatureFactory [::SensorFeatureFactory::getInstance]
        if {[[::Features::getInstance] isFeature [$sensorFeatureFactory jget ORIENTATION_SENSORS]]} {
            [::AccelerometerSensorFactory::getInstance] setCompleteMotionGestureInputEventListener [::SingleKeyPressGameKeyFromMotionGestureEventListener new]
        } elseif {[[::Features::getInstance] isFeature [$sensorFeatureFactory jget SIMULATED_ORIENTATION_SENSORS]]} {
            [::AccelerometerSensorFactory::getInstance] setCompleteMotionGestureInputEventListener [::SingleKeyPressGameKeyFromMotionGestureEventListener new]
        } elseif {[[::Features::getInstance] isFeature [$sensorFeatureFactory jget NO_ORIENTATION]]} {
            [::AccelerometerSensorFactory::getInstance] setCompleteMotionGestureInputEventListener [::NoCompleteMotionGestureInputEventListener::getInstance]
        } else {
            error [jexception Exception "Sensor Feature Not Set"]
        }
    }
}

namespace eval ::AccelerometerSensorUpdateProcessor {
}


