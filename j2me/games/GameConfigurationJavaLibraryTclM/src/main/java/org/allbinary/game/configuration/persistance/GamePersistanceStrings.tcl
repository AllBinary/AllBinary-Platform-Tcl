# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.configuration.persistance

oo::class create ::GamePersistanceStrings {
    superclass ::JObject
}

oo::define ::GamePersistanceStrings {
    method initFields_GamePersistanceStrings {} {
        my jset SAVED_GAME_RECORD_ID {}
        my jset SAVED_GAME_CONFIGURATION_RECORD_ID {}
        my jset DEFAULT_INPUT_MAPPING_RECORD_ID {}
        my jset SAVED_INPUT_CONFIGURATION_RECORD_ID {}
        my jset SAVED_GAME_RECORD_ID "_SG"
        my jset SAVED_GAME_CONFIGURATION_RECORD_ID "_SGC"
        my jset DEFAULT_INPUT_MAPPING_RECORD_ID "_DIM"
        my jset SAVED_INPUT_CONFIGURATION_RECORD_ID "_SIC"
        return
    }

    constructor {} {
        next
        my initFields_GamePersistanceStrings
    }
    
}

namespace eval ::GamePersistanceStrings {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GamePersistanceStrings new]
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
        return [::GamePersistanceStrings::staticGet_instance]
    }
}


