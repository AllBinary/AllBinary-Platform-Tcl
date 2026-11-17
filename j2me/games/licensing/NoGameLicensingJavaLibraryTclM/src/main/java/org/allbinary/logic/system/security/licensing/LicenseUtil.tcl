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

oo::class create ::LicenseUtil {
    superclass ::JObject
}

oo::define ::LicenseUtil {
    method initFields_LicenseUtil {} {
        return
    }

    constructor {} {
        next
        my initFields_LicenseUtil
    }
    
    

    method init {} {
    }
    

    method isRunning {} {
        return false
    }
    

    method setRunning {running} {
    }
    

    method shouldWait {commandListener} {
        return [my isRunning]
    }
}

namespace eval ::LicenseUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LicenseUtil new]
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
        return [::LicenseUtil::staticGet_instance]
    }
}


