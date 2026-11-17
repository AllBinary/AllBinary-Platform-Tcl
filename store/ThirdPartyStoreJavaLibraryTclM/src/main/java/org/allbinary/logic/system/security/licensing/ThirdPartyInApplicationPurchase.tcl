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

oo::class create ::ThirdPartyInApplicationPurchase {
    superclass ::JObject
}

oo::define ::ThirdPartyInApplicationPurchase {
    method initFields_ThirdPartyInApplicationPurchase {} {
        return
    }

    constructor {} {
        next
        my initFields_ThirdPartyInApplicationPurchase
    }
    

    method isPurchased {lockableFeature} {
        return false
    }
    

    method onCreate {anyType stateObject} {
    }
    

    method onDestroy {} {
    }
    

    method onStart {} {
    }
    

    method onActivityResult {requestCode resultCode dataObject} {
    }
    

    method onSaveInstanceState {anyType} {
    }
    

    method onStop {} {
    }
    

    method requestPurchase {lockableFeature} {
    }
    

    method requestReceipts {} {
    }
    

    method add {lockableFeature} {
    }
    

    method getUserName {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method isEnabled {} {
        return false
    }
    

    method requestProducts {} {
    }
}

namespace eval ::ThirdPartyInApplicationPurchase {
}


