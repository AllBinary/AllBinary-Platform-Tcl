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
# package org.allbinary.logic.system.os

oo::class create ::OperatingSystemFactory {
    superclass ::JObject
}

oo::define ::OperatingSystemFactory {
    method initFields_OperatingSystemFactory {} {
        my jset logUtil {}
        my jset genericOperatingSystem {}
        my jset logUtil [::LogUtil::getInstance]
        my jset genericOperatingSystem [::NoOperatingSystem::staticGet_NO_OPERATING_SYSTEM]
        return
    }
    
    

    constructor {} {
        next
        my initFields_OperatingSystemFactory
    }
    

    method getOperatingSystemInstance {} {
        set commonStrings [::CommonStrings::getInstance]
        try {
            set osString [[[[::StringMaker new] append "OperatingSystem Info: "] append [[my jget genericOperatingSystem] toString]] toString]
            puts [jstr $osString]
            [my jget logUtil] putF $osString [self] [$commonStrings jget GET_INSTANCE]
        } on error {e} {
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
        }
        return [my jget genericOperatingSystem]
    }
}

namespace eval ::OperatingSystemFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OperatingSystemFactory new]
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
        return [::OperatingSystemFactory::staticGet_instance]
    }
}


