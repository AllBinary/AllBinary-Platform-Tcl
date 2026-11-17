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
# package org.allbinary.game.midlet

oo::class create ::LicenseLoadingTypeFactory {
    superclass ::JObject
}

oo::define ::LicenseLoadingTypeFactory {
    method initFields_LicenseLoadingTypeFactory {} {
        my jset INITIAL_LOADING {}
        my jset GAME_START {}
        my jset LOGIN {}
        my jset OTHER {}
        my jset INITIAL_LOADING [::LicenseLoadingType new "Initial Loading"]
        my jset GAME_START [::LicenseLoadingType new "Game Start"]
        my jset LOGIN [::LicenseLoadingType new "Login"]
        my jset OTHER [::LicenseLoadingType new "Other/Usually The First Non Demo Level"]
        return
    }

    constructor {} {
        next
        my initFields_LicenseLoadingTypeFactory
    }
    
}

namespace eval ::LicenseLoadingTypeFactory {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::LicenseLoadingTypeFactory new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getIntance {} {
        return [::LicenseLoadingTypeFactory::staticGet_instance]
    }
}


