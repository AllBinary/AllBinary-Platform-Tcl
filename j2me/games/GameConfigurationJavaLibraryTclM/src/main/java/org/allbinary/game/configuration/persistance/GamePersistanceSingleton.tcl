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
# package org.allbinary.game.configuration.persistance

oo::class create ::GamePersistanceSingleton {
    superclass ::KeyValuePersistance
}

oo::define ::GamePersistanceSingleton {
    method initFields_GamePersistanceSingleton {} {
        return
    }
    
    

    constructor {} {
        next [[::GamePersistanceStrings::getInstance] jget SAVED_GAME_RECORD_ID]
        my initFields_GamePersistanceSingleton
    }
}

namespace eval ::GamePersistanceSingleton {
    variable GAME_PERSISTANCEValue {}
    variable GAME_PERSISTANCESet 0
    proc staticGet_GAME_PERSISTANCE {} {
        variable GAME_PERSISTANCEValue
        variable GAME_PERSISTANCESet
        if {!$GAME_PERSISTANCESet} {
            set GAME_PERSISTANCESet 1
            set GAME_PERSISTANCEValue [::GamePersistanceSingleton new]
        }
        return $GAME_PERSISTANCEValue
    }
    proc staticSet_GAME_PERSISTANCE {value} {
        variable GAME_PERSISTANCEValue
        variable GAME_PERSISTANCESet
        set GAME_PERSISTANCESet 1
        set GAME_PERSISTANCEValue $value
    }
    proc getInstance {} {
        return [::GamePersistanceSingleton::staticGet_GAME_PERSISTANCE]
    }
}


