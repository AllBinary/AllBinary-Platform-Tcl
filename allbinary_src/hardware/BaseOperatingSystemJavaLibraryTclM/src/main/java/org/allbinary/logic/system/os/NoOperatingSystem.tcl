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

oo::class create ::NoOperatingSystem {
    superclass ::GenericOperatingSystem
}

oo::define ::NoOperatingSystem {
    method initFields_NoOperatingSystem {} {
        return
    }
    

    constructor {} {
        next
        my initFields_NoOperatingSystem
    }
}

namespace eval ::NoOperatingSystem {
    variable NO_OPERATING_SYSTEMValue {}
    variable NO_OPERATING_SYSTEMSet 0
    proc staticGet_NO_OPERATING_SYSTEM {} {
        variable NO_OPERATING_SYSTEMValue
        variable NO_OPERATING_SYSTEMSet
        if {!$NO_OPERATING_SYSTEMSet} {
            set NO_OPERATING_SYSTEMSet 1
            set NO_OPERATING_SYSTEMValue [::GenericOperatingSystem new]
        }
        return $NO_OPERATING_SYSTEMValue
    }
    proc staticSet_NO_OPERATING_SYSTEM {value} {
        variable NO_OPERATING_SYSTEMValue
        variable NO_OPERATING_SYSTEMSet
        set NO_OPERATING_SYSTEMSet 1
        set NO_OPERATING_SYSTEMValue $value
    }
}


