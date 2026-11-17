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
# package org.allbinary.logic.system.security.crypt.jcehelper

oo::class create ::KeySpecFactory {
    superclass ::JObject
}

oo::define ::KeySpecFactory {
    method initFields_KeySpecFactory {} {
        my jset DES {}
        my jset DESEDE {}
        my jset BLOWFISH {}
        my jset DES "DES"
        my jset DESEDE "DESede"
        my jset BLOWFISH "Blowfish"
        return
    }
    
    

    constructor {} {
        next
        my initFields_KeySpecFactory
    }
    

    method getInstance {algorithm keyData} {
        try {
            set tsUtil [::TsUtil::getInstance]
            if {[expr {[$tsUtil compareTo $algorithm [my jget DES]] == 0}]} {
                return [::DESKeySpec new $keyData]
            } elseif {[expr {[$tsUtil compareTo $algorithm [my jget DESEDE]] == 0}]} {
                return [::DESedeKeySpec new $keyData]
            } else {
                error [jexception RuntimeException {}]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            ::PreLogUtil::putOE [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
            error [jexception RuntimeException {}]
        }
    }
}

namespace eval ::KeySpecFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::KeySpecFactory new]
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
        return [::KeySpecFactory::staticGet_instance]
    }
}


