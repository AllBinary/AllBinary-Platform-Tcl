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

oo::class create ::OperatingSystems {
    superclass ::JObject
}

oo::define ::OperatingSystems {
    method initFields_OperatingSystems {} {
        my jset LINUX {}
        my jset WINDOWS {}
        my jset SOLARIS {}
        my jset WINDOWS2000 {}
        my jset WINDOWS_NT {}
        my jset WINDOWS_10 {}
        my jset WINDOWS_11 {}
        my jset WINDOWS_VISTA {}
        my jset WINDOWS_XP {}
        my jset ANDROID {}
        my jset HARMONY {}
        my jset unknownSpecificOSAllowed false
        my jset LINUX "Linux"
        my jset WINDOWS "Windows"
        my jset SOLARIS "Solaris"
        my jset WINDOWS2000 "Windows 2000"
        my jset WINDOWS_NT "Windows NT"
        my jset WINDOWS_10 "Windows 10"
        my jset WINDOWS_11 "Windows 11"
        my jset WINDOWS_VISTA "Windows Vista"
        my jset WINDOWS_XP "Windows XP"
        my jset ANDROID [my jget LINUX]
        my jset HARMONY "HarmonyOS"
        my jset unknownSpecificOSAllowed true
        return
    }
    

    constructor {} {
        next
        my initFields_OperatingSystems
    }
    

    method isUnknownSpecificOSAllowed {} {
        return [my jget unknownSpecificOSAllowed]
    }
    

    method setUnknownSpecificOSAllowed {aUnknownSpecificOSAllowed} {
        my jset unknownSpecificOSAllowed $aUnknownSpecificOSAllowed
    }
    
}

namespace eval ::OperatingSystems {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::OperatingSystems new]
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
        return [::OperatingSystems::staticGet_instance]
    }
}


