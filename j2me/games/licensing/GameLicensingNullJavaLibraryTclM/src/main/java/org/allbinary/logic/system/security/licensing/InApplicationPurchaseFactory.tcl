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

oo::class create ::InApplicationPurchaseFactory {
    superclass ::JObject
}

oo::define ::InApplicationPurchaseFactory {
    method initFields_InApplicationPurchaseFactory {} {
        return
    }
    
    

    constructor {} {
        next
        my initFields_InApplicationPurchaseFactory
    }
    

    method init {anyType stateObject} {
    }
    

    method onCreate {anyType stateObject} {
    }
    

    method onStart {} {
    }
    

    method onResult {requestCode resultCode data} {
    }
    

    method onSaveState {anyType} {
    }
    

    method onStop {} {
    }
    

    method onDestroy {} {
    }
    

    method purchase {lockableFeature} {
    }
    

    method isPurchased {lockableFeature} {
        return false
    }
    

    method add {lockableFeature} {
    }
    

    method getUserName {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method isEnabled {} {
        return false
    }
}

namespace eval ::InApplicationPurchaseFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::InApplicationPurchaseFactory new]
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
        return [::InApplicationPurchaseFactory::staticGet_instance]
    }
}


