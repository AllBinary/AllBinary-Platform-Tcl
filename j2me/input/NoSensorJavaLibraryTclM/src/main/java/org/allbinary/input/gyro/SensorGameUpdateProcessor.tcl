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

oo::class create ::SensorGameUpdateProcessor {
    superclass ::JObject
}

oo::define ::SensorGameUpdateProcessor {
    method initFields_SensorGameUpdateProcessor {} {
        my jset inputSensor {}
        my jset inputSensor [::NoAllBinarySensor::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_SensorGameUpdateProcessor
    }
    

    method setInputSensor {inputSensor} {
        my jset inputSensor $inputSensor
    }
    

    method getInputSensor {} {
        return [my jget inputSensor]
    }
    

    method process {anyType} {
    }
    

    method sendNotifications {anyType} {
    }
    

    method isAnySensor {} {
        if {[expr {[my jget inputSensor] eq [::NoAllBinarySensor::getInstance]}]} {
            return false
        } else {
            return true
        }
    }
    

    method setNoSensors {} {
        my setInputSensor [::NoAllBinarySensor::getInstance]
    }
}

namespace eval ::SensorGameUpdateProcessor {
}


