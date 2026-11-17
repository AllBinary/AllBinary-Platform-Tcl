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

oo::class create ::HardwareFactory {
    superclass ::JObject
}

oo::define ::HardwareFactory {
    method initFields_HardwareFactory {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_HardwareFactory
    }
    
}

namespace eval ::HardwareFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::HardwareFactory new]
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
        return [::HardwareFactory::staticGet_instance]
    }
    proc getInstance {os} {
        try {
            set operatingSystems [::OperatingSystems::getInstance]
            if {[expr {[[$os getName] compareTo [$operatingSystems jget LINUX]] == 0}]} {
                return [::LinuxHardware new]
            } elseif {[expr {[[$os getName] indexOf [$operatingSystems jget WINDOWS]] >= 0}]} {
                return [::WindowsHardware new]
            }
            error [jexception Exception [string cat "No Hardware Imp for: " [$os getName]]]
        } on error {e} {
            error $e
        }
    }
}


