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

oo::class create ::OrientationToGameKeyEvent {
    superclass ::JObject
}

oo::define ::OrientationToGameKeyEvent {
    method initFields_OrientationToGameKeyEvent {} {
        my jset allBinaryGyroSensor {}
        my jset MIN 0
        my jset allBinaryGyroSensor {}
        my jset MIN 15
        return
    }
    

    constructor {} {
        next
        my initFields_OrientationToGameKeyEvent
        if {[[::Features::getInstance] isFeature [[::SensorFeatureFactory::getInstance] jget NO_ORIENTATION]]} {
            my jset allBinaryGyroSensor [::NoGyroSensor new]
        } else {
            error [jexception Exception "Not Such Feature"]
        }
    }
    

    method setAllBinaryGyroSensor {allBinaryGyroSensor} {
        my jset allBinaryGyroSensor $allBinaryGyroSensor
    }
    

    method getAllBinaryGyroSensor {} {
        return [my jget allBinaryGyroSensor]
    }
    

    method process {} {
    }
    

    method updateGameKeyEvents {orientation yaw pitch roll} {
    }
}

namespace eval ::OrientationToGameKeyEvent {
}


