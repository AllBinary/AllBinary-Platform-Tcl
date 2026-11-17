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
# package org.allbinary.time

oo::class create ::LicenseStupidTimerFactory {
    superclass ::JObject
}

oo::define ::LicenseStupidTimerFactory {
    method initFields_LicenseStupidTimerFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_LicenseStupidTimerFactory
    }
    
}

namespace eval ::LicenseStupidTimerFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::StupidTimer new]
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
        return [::LicenseStupidTimerFactory::staticGet_instance]
    }
}


