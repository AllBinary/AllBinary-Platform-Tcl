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

oo::class create ::NoThirdPartyStore {
    superclass ::ThirdPartyStore
}

oo::define ::NoThirdPartyStore {
    method initFields_NoThirdPartyStore {} {
        return
    }
    

    constructor {} {
        next [[::StringUtil::getInstance] jget EMPTY_STRING]
        my initFields_NoThirdPartyStore
    }
    

    method authorize {clientInformationInterface} {
        my setAuthorized true
    }
}

namespace eval ::NoThirdPartyStore {
}


