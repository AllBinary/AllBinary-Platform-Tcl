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

oo::class create ::NoGyroSensor {
    superclass ::AllBinaryOrientationSensor
}

oo::define ::NoGyroSensor {
    method initFields_NoGyroSensor {} {
        return
    }
    

    constructor {} {
        next
        my initFields_NoGyroSensor
        [my jget logUtil] putF [[my jget commonStrings] jget START] [self] [[my jget commonStrings] jget CONSTRUCTOR]
    }
    

    method getOrientation {} {
        return [::Orientation::staticGet_NONE]
    }
    

    method onSensorChange {} {
    }
}

namespace eval ::NoGyroSensor {
}


