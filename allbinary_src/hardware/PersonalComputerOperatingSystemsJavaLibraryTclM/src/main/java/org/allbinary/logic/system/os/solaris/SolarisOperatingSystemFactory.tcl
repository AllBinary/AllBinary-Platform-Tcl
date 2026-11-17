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
# package org.allbinary.logic.system.os.solaris

oo::class create ::SolarisOperatingSystemFactory {
    superclass ::JObject
}

oo::define ::SolarisOperatingSystemFactory {
    method initFields_SolarisOperatingSystemFactory {} {
        my jset logUtil {}
        my jset logUtil [::LogUtil::getInstance]
        return
    }
    
    

    constructor {} {
        next
        my initFields_SolarisOperatingSystemFactory
    }
    

    method getOperatingSystemInstance {} {
        try {
            set operatingSystems [::OperatingSystems::getInstance]
            set osName [[::SystemProperties::getInstance] getName]
            set operatingSystemInterface {}
            if {[expr {[jcompareto $osName [$operatingSystems jget SOLARIS]] == 0}]} {
                set operatingSystemInterface [::SolarisOS new]
            } else {
                if {[$operatingSystems isUnknownSpecificOSAllowed]} {
                    set operatingSystemInterface [::SolarisOS new]
                } else {
                    error [jexception Exception [string cat "Specific Solaris OS Not Supported: " $osName]]
                }
            }
            return $operatingSystemInterface
        } on error {e} {
            if {[[::LogConfigTypes::staticGet_LOGGING] contains [[::LogConfigTypeFactory::getInstance] jget FACTORYERROR]]} {
                set commonStrings [::CommonStrings::getInstance]
                [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
            }
            return [::NoOperatingSystem::staticGet_NO_OPERATING_SYSTEM]
        }
    }
}

namespace eval ::SolarisOperatingSystemFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SolarisOperatingSystemFactory new]
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
        return [::SolarisOperatingSystemFactory::staticGet_instance]
    }
}


