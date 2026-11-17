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

oo::class create ::StoreAppClientInformation {
    superclass ::AbeClientInformation
}

oo::define ::StoreAppClientInformation {
    method initFields_StoreAppClientInformation {} {
        my jset longArrayIdentifier {}
        
        return
    }
    

    constructor {name version specialName shortName longArrayIdentifier} {
        next $name $version $specialName $shortName
        my initFields_StoreAppClientInformation
        my jset longArrayIdentifier $longArrayIdentifier
    }
    

    method getLongArrayIdentifier {} {
        return [my jget longArrayIdentifier]
    }
}

namespace eval ::StoreAppClientInformation {
}


