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
# package org.allbinary.logic.system.security.licensing

oo::class create ::LicenseStrings {
    superclass ::JObject
}

oo::define ::LicenseStrings {
    method initFields_LicenseStrings {} {
        my jset LOCKED {}
        my jset LOCKED "Demo Locked Feature"
        return
    }

    constructor {} {
        next
        my initFields_LicenseStrings
    }
    
}

namespace eval ::LicenseStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LicenseStrings new]
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
        return [::LicenseStrings::staticGet_instance]
    }
}


