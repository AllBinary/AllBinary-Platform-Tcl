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

oo::class create ::OrientationData {
    superclass ::JObject
}

oo::define ::OrientationData {
    method initFields_OrientationData {} {
        my jset ORIENTATION_SENSOR_INPUT {}
        my jset ORIENTATION_TYPE {}
        my jset ORIENTATION_SENSOR_INPUT "Orientation Sensor Input"
        my jset ORIENTATION_TYPE "Orientation Type"
        return
    }
    

    constructor {} {
        next
        my initFields_OrientationData
    }
    
}

namespace eval ::OrientationData {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::OrientationData new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::OrientationData::staticGet_SINGLETON]
    }
}


