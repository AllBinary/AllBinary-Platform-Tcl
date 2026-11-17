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

oo::class create ::SystemHardwareFactory {
    superclass ::JObject
}

oo::define ::SystemHardwareFactory {
    method initFields_SystemHardwareFactory {} {
        my jset logUtil {}
        my jset commonStrings {}
        my jset hardwareInterface {}
        my jset logUtil [::LogUtil::getInstance]
        my jset commonStrings [::CommonStrings::getInstance]
        my jset hardwareInterface [::NoHardware::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_SystemHardwareFactory
    }
    

    method getInstance {operatingSystemInterface} {
        try {
            if {[expr {[my jget hardwareInterface] eq [::NoHardware::getInstance]}]} {
                my jset hardwareInterface [[::HardwareFactory::getInstance] getInstance $operatingSystemInterface]
            }
            [my jget logUtil] putF "Found Hardware" [self] [[my jget commonStrings] jget CONSTRUCTOR]
        } on error {e} {
            [my jget logUtil] put [[my jget commonStrings] jget EXCEPTION] [self] [[my jget commonStrings] jget CONSTRUCTOR] $e
        }
        return [my jget hardwareInterface]
    }
    
}

namespace eval ::SystemHardwareFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SystemHardwareFactory new]
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
        return [::SystemHardwareFactory::staticGet_instance]
    }
    proc static_toString {} {
        set systemHardwareFactory [::SystemHardwareFactory::getInstance]
        set osBuffer [::StringMaker new]
        $osBuffer append "Hardware Info: \n"
        if {[expr {[$systemHardwareFactory jget hardwareInterface] ne {}}]} {
            $osBuffer append [[$systemHardwareFactory jget hardwareInterface] toString]
        } else {
            $osBuffer append [[::StringUtil::getInstance] jget NULL_STRING]
        }
        return [$osBuffer toString]
    }
}


