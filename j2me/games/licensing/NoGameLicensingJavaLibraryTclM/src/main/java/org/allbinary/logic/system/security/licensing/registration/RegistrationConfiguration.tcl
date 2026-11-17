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
# package org.allbinary.logic.system.security.licensing.registration

oo::class create ::RegistrationConfiguration {
    superclass ::JObject
}

oo::define ::RegistrationConfiguration {
    method initFields_RegistrationConfiguration {} {
        my jset registrationCode {}
        my jset NAME {}
        my jset registrationCode "No Registration Code"
        my jset NAME "registrationid"
        return
    }
    

    constructor {} {
        next
        my initFields_RegistrationConfiguration
    }
    
    

    method read {} {
    }
    

    method write {} {
    }
    

    method toString {} {
        return [[[[::StringMaker new] append "Registration Code: "] append [my getRegistrationCode]] toString]
    }
    

    method setRegistrationCode {registrationCode} {
        my jset registrationCode $registrationCode
    }
    

    method getRegistrationCode {} {
        return [my jget registrationCode]
    }
}

namespace eval ::RegistrationConfiguration {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::RegistrationConfiguration new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::RegistrationConfiguration::staticGet_SINGLETON]
    }
}


