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

oo::class create ::AllBinaryOrientationSensor {
    superclass ::AllBinarySensor
}

oo::define ::AllBinaryOrientationSensor {
    method initFields_AllBinaryOrientationSensor {} {
        my jset listener {}
        my jset listener [::NoCompleteMotionGestureInputEventListener::getInstance]
        return
    }
    

    method setListener {completeMotionGestureInputEventListenerInterface} {
        my jset listener $completeMotionGestureInputEventListenerInterface
    }
    

    constructor {} {
        next
        my initFields_AllBinaryOrientationSensor
    }
    

    method getOrientation {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
}

namespace eval ::AllBinaryOrientationSensor {
    variable NULL_ALLBINARY_ORIENTATION_SENSORValue {}
    variable NULL_ALLBINARY_ORIENTATION_SENSORSet 0
    proc staticGet_NULL_ALLBINARY_ORIENTATION_SENSOR {} {
        variable NULL_ALLBINARY_ORIENTATION_SENSORValue
        variable NULL_ALLBINARY_ORIENTATION_SENSORSet
        if {!$NULL_ALLBINARY_ORIENTATION_SENSORSet} {
            set NULL_ALLBINARY_ORIENTATION_SENSORSet 1
            set NULL_ALLBINARY_ORIENTATION_SENSORValue [::AllBinaryOrientationSensor new]
        }
        return $NULL_ALLBINARY_ORIENTATION_SENSORValue
    }
    proc staticSet_NULL_ALLBINARY_ORIENTATION_SENSOR {value} {
        variable NULL_ALLBINARY_ORIENTATION_SENSORValue
        variable NULL_ALLBINARY_ORIENTATION_SENSORSet
        set NULL_ALLBINARY_ORIENTATION_SENSORSet 1
        set NULL_ALLBINARY_ORIENTATION_SENSORValue $value
    }
}


