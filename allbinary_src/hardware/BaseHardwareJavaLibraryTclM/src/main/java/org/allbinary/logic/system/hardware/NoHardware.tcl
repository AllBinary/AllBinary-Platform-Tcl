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
# package org.allbinary.logic.system.hardware

oo::class create ::NoHardware {
    superclass ::JObject
}

oo::define ::NoHardware {
    method initFields_NoHardware {} {
        return
    }

    constructor {} {
        next
        my initFields_NoHardware
    }
    
    

    method getComponent {index} {
        return [::NoHardwareComponent::getInstance]
    }
    

    method toString {} {
        return "No Hardware"
    }
    

    method compareTo {hardwareInterface} {
        return true
    }
    

    method difference {hardwareInterface} {
        return [[::StdUtil::getInstance] jget NULL_TABLE]
    }
}

namespace eval ::NoHardware {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoHardware new]
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
        return [::NoHardware::staticGet_instance]
    }
}


