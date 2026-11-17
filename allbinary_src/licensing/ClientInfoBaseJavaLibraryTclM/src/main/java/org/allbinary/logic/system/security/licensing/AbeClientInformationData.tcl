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

oo::class create ::AbeClientInformationData {
    superclass ::JObject
}

oo::define ::AbeClientInformationData {
    method initFields_AbeClientInformationData {} {
        my jset KEY {}
        my jset NAME {}
        my jset VERSION {}
        my jset SPECIALNAME {}
        my jset LICENSEID {}
        my jset LICENSE_TYPE {}
        my jset PREVIOUSLICENSEID {}
        my jset OSNAME {}
        my jset OSARCH {}
        my jset OSVERSION {}
        my jset OS {}
        my jset HARDWARE {}
        my jset LICENSESERVERS {}
        my jset NEWLICENSE {}
        my jset ISNEW {}
        my jset SPECIAL {}
        my jset KEY "KEY"
        my jset NAME "NAME"
        my jset VERSION "VERSION"
        my jset SPECIALNAME "SPECIALNAME"
        my jset LICENSEID "LICENSEID"
        my jset LICENSE_TYPE "LICENSETYPE"
        my jset PREVIOUSLICENSEID "PREVIOUSLICENSEID"
        my jset OSNAME "OSNAME"
        my jset OSARCH "OSARCH"
        my jset OSVERSION "OSVERSION"
        my jset OS "OS"
        my jset HARDWARE "HARDWARE"
        my jset LICENSESERVERS "LICENSESERVERS"
        my jset NEWLICENSE "NEWLICENSE"
        my jset ISNEW "ISNEW"
        my jset SPECIAL "SPECIAL"
        return
    }
    
    

    constructor {} {
        next
        my initFields_AbeClientInformationData
    }
}

namespace eval ::AbeClientInformationData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::AbeClientInformationData new]
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
        return [::AbeClientInformationData::staticGet_instance]
    }
}


