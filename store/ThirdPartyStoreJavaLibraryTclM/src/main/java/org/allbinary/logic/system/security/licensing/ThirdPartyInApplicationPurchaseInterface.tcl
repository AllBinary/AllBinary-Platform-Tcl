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

oo::class create ::ThirdPartyInApplicationPurchaseInterface {
    superclass ::JObject
}

oo::define ::ThirdPartyInApplicationPurchaseInterface {
    method initFields_ThirdPartyInApplicationPurchaseInterface {} {
        return
    }
    

    method isPurchased {lockableFeature} {
        error [jexception AbstractMethodError isPurchased]
    }
    

    method onCreate {anyType stateObject} {
        error [jexception AbstractMethodError onCreate]
    }
    

    method onDestroy {} {
        error [jexception AbstractMethodError onDestroy]
    }
    

    method onStart {} {
        error [jexception AbstractMethodError onStart]
    }
    

    method onActivityResult {requestCode resultCode dataObject} {
        error [jexception AbstractMethodError onActivityResult]
    }
    

    method onSaveInstanceState {anyType} {
        error [jexception AbstractMethodError onSaveInstanceState]
    }
    

    method onStop {} {
        error [jexception AbstractMethodError onStop]
    }
    

    method requestPurchase {lockableFeature} {
        error [jexception AbstractMethodError requestPurchase]
    }
    

    method requestReceipts {} {
        error [jexception AbstractMethodError requestReceipts]
    }
    

    method add {lockableFeature} {
        error [jexception AbstractMethodError add]
    }
    

    method getUserName {} {
        error [jexception AbstractMethodError getUserName]
    }
    

    method isEnabled {} {
        error [jexception AbstractMethodError isEnabled]
    }
}

namespace eval ::ThirdPartyInApplicationPurchaseInterface {
}


