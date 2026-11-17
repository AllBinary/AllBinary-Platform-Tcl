# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.system.hardware.components.interfaces

oo::class create ::NoHardwareComponent {
    superclass ::JObject
}

oo::define ::NoHardwareComponent {
    method initFields_NoHardwareComponent {} {
        return
    }

    constructor {} {
        next
        my initFields_NoHardwareComponent
    }
    
    

    method compareTo {componentInterface} {
        if {[expr {[self] eq $componentInterface}]} {
            return true
        }
        return false
    }
    

    method toString {} {
        return [[::StringUtil::getInstance] jget NULL_STRING]
    }
}

namespace eval ::NoHardwareComponent {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::NoHardwareComponent new]
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
        return [::NoHardwareComponent::staticGet_instance]
    }
}


