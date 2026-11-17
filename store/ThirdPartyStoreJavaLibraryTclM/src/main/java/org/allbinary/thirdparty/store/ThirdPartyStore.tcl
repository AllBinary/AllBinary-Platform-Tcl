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
# package org.allbinary.thirdparty.store

oo::class create ::ThirdPartyStore {
    superclass ::JObject
}

oo::define ::ThirdPartyStore {
    method initFields_ThirdPartyStore {} {
        my jset authorized false
        my jset name {}
        my jset authorized false
        
        return
    }
    

    constructor {name} {
        next
        my initFields_ThirdPartyStore
        my jset name $name
    }
    

    method authorize {clientInformationInterface} {
    }
    

    method isAuthorized {} {
        return [my jget authorized]
    }
    

    method setAuthorized {authorized} {
        my jset authorized $authorized
    }
    

    method getName {} {
        return [my jget name]
    }
}

namespace eval ::ThirdPartyStore {
}


