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
# package org.allbinary.input

oo::class create ::AllBinarySensorManager {
    superclass ::JObject
}

oo::define ::AllBinarySensorManager {
    method initFields_AllBinarySensorManager {} {
        my jset ORIENTATION_SENSOR_INPUT {}
        my jset ORIENTATION_TYPE {}
        my jset list {}
        my jset ORIENTATION_SENSOR_INPUT "Orientation Sensor Input"
        my jset ORIENTATION_TYPE "Orientation Type"
        my jset list [::BasicArrayListD new]
        return
    }
    
    

    constructor {} {
        next
        my initFields_AllBinarySensorManager
    }
    

    method init {} {
    }
    

    method getSensorNamesList {} {
        return [my jget list]
    }
    

    method shutdown {} {
    }
}

namespace eval ::AllBinarySensorManager {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [[::NullUtil::getInstance] jget NULL_OBJECT]
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
        if {[expr {[::AllBinarySensorManager::staticGet_instance] eq [[::NullUtil::getInstance] jget NULL_OBJECT]}]} {
            ::AllBinarySensorManager::staticSet_instance [::AllBinarySensorManager new]
        }
        return [::AllBinarySensorManager::staticGet_instance]
    }
}


