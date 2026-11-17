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

#ActualPlatform
oo::class create ::SystemProperties {
    superclass ::JObject
}

oo::define ::SystemProperties {
    method initFields_SystemProperties {} {
        my jset OS_NAME {}
        my jset OS_ARCH {}
        my jset OS_VERSION {}
        my jset USER_HOME {}
        my jset OS_NAME "os.name"
        my jset OS_ARCH "os.arch"
        my jset OS_VERSION "os.version"
        my jset USER_HOME "user.home"
        return
    }
    
    

    constructor {} {
        next
        my initFields_SystemProperties
    }
    

    method getName {} {
        return [::System::getProperty [my jget OS_NAME]]
    }
    

    method getArch {} {
        return [::System::getProperty [my jget OS_ARCH]]
    }
    

    method getVersion {} {
        return [::System::getProperty [my jget OS_VERSION]]
    }
    

    method getUserHomePath {} {
        return [::System::getProperty [my jget USER_HOME]]
    }
}

namespace eval ::SystemProperties {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::SystemProperties new]
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
        return [::SystemProperties::staticGet_instance]
    }
}


