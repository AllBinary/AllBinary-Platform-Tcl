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

oo::class create ::GyroSensorFactory {
    superclass ::JObject
}

oo::define ::GyroSensorFactory {
    method initFields_GyroSensorFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_GyroSensorFactory
    }
    
    
}

namespace eval ::GyroSensorFactory {
    variable allBinaryGyroSensorValue {}
    variable allBinaryGyroSensorSet 0
    proc staticGet_allBinaryGyroSensor {} {
        variable allBinaryGyroSensorValue
        variable allBinaryGyroSensorSet
        if {!$allBinaryGyroSensorSet} {
            set allBinaryGyroSensorSet 1
            set allBinaryGyroSensorValue [::AllBinaryOrientationSensor::staticGet_NULL_ALLBINARY_ORIENTATION_SENSOR]
        }
        return $allBinaryGyroSensorValue
    }
    proc staticSet_allBinaryGyroSensor {value} {
        variable allBinaryGyroSensorValue
        variable allBinaryGyroSensorSet
        set allBinaryGyroSensorSet 1
        set allBinaryGyroSensorValue $value
    }
    proc init {} {
        ::GyroSensorFactory::staticSet_allBinaryGyroSensor [::NoGyroSensor new]
    }
    proc getInstance {} {
        return [::GyroSensorFactory::staticGet_allBinaryGyroSensor]
    }
}


