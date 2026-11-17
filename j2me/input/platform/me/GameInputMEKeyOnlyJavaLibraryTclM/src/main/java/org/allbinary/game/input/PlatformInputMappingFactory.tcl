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
# package org.allbinary.game.input

oo::class create ::PlatformInputMappingFactory {
    superclass ::JObject
}

oo::define ::PlatformInputMappingFactory {
    method initFields_PlatformInputMappingFactory {} {
        my jset logUtil {}
        my jset inputToGameKeyMapping {}
        my jset logUtil [::LogUtil::getInstance]
        my jset inputToGameKeyMapping [::PersistentInputMapping::getNullInstance]
        return
    }

    constructor {} {
        next
        my initFields_PlatformInputMappingFactory
    }
    
    

    method getPersistentInputMappingInstance {} {
        try {
            if {[expr {[my jget inputToGameKeyMapping] eq [::PersistentInputMapping::getNullInstance]}]} {
                my jset inputToGameKeyMapping [::NormalJ2MEGameInputMapping new]
            }
        } on error {e} {
            set commonStrings [::CommonStrings::getInstance]
            [my jget logUtil] put [$commonStrings jget EXCEPTION] [self] [$commonStrings jget GET_INSTANCE] $e
        }
        return [my jget inputToGameKeyMapping]
    }
}

namespace eval ::PlatformInputMappingFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::PlatformInputMappingFactory new]
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
        return [::PlatformInputMappingFactory::staticGet_instance]
    }
}


