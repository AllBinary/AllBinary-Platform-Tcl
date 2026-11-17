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

oo::class create ::PlayerTypesFactory {
    superclass ::JObject
}

oo::define ::PlayerTypesFactory {
    method initFields_PlayerTypesFactory {} {
        my jset PLAYER_TYPE_ONE {}
        my jset PLAYER_TYPE_TWO {}
        my jset PLAYER_TYPE_THREE {}
        my jset PLAYER_TYPE_ONE [::PlayerType new "Player Type One" 0]
        my jset PLAYER_TYPE_TWO [::PlayerType new "Player Type Two" 1]
        my jset PLAYER_TYPE_THREE [::PlayerType new "Player Type Three" 2]
        return
    }

    constructor {} {
        next
        my initFields_PlayerTypesFactory
    }
    
}

namespace eval ::PlayerTypesFactory {
    variable SINGLETONValue {}
    variable SINGLETONSet 0
    proc staticGet_SINGLETON {} {
        variable SINGLETONValue
        variable SINGLETONSet
        if {!$SINGLETONSet} {
            set SINGLETONSet 1
            set SINGLETONValue [::PlayerTypesFactory new]
        }
        return $SINGLETONValue
    }
    proc staticSet_SINGLETON {value} {
        variable SINGLETONValue
        variable SINGLETONSet
        set SINGLETONSet 1
        set SINGLETONValue $value
    }
    proc getInstance {} {
        return [::PlayerTypesFactory::staticGet_SINGLETON]
    }
}


