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
# package org.allbinary.game

oo::class create ::GameInfoData {
    superclass ::JObject
}

oo::define ::GameInfoData {
    method initFields_GameInfoData {} {
        my jset GAME_TYPE {}
        my jset GAME_MODE {}
        my jset PLAYER_TYPE {}
        my jset HIGHEST_LEVEL {}
        my jset CURRENT_LEVEL {}
        my jset SOFTWARE_INFORMATION {}
        my jset GAME_TYPE "GAME_TYPE"
        my jset GAME_MODE "GAME_MODE"
        my jset PLAYER_TYPE "PLAYER_TYPE"
        my jset HIGHEST_LEVEL "HIGHEST_LEVEL"
        my jset CURRENT_LEVEL "CURRENT_LEVEL"
        my jset SOFTWARE_INFORMATION "SOFTWARE_INFORMATION"
        return
    }
    
    

    constructor {} {
        next
        my initFields_GameInfoData
    }
}

namespace eval ::GameInfoData {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameInfoData new]
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
        return [::GameInfoData::staticGet_instance]
    }
}


