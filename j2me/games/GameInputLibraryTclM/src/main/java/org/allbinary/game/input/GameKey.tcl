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

oo::class create ::GameKey {
    superclass ::Input
}

oo::define ::GameKey {
    method initFields_GameKey {} {
        return
    }
    

    constructor {key name} {
        next $key $name
        my initFields_GameKey
    }
    

    method toString {} {
        return [[[[::StringMaker new] append "GameKey "] append [next]] toString]
    }
}

namespace eval ::GameKey {
    variable NULL_GAME_KEYValue {}
    variable NULL_GAME_KEYSet 0
    proc staticGet_NULL_GAME_KEY {} {
        variable NULL_GAME_KEYValue
        variable NULL_GAME_KEYSet
        if {!$NULL_GAME_KEYSet} {
            set NULL_GAME_KEYSet 1
            set NULL_GAME_KEYValue [::GameKey new [expr {-1}] [[::StringUtil::getInstance] jget NULL_STRING]]
        }
        return $NULL_GAME_KEYValue
    }
    proc staticSet_NULL_GAME_KEY {value} {
        variable NULL_GAME_KEYValue
        variable NULL_GAME_KEYSet
        set NULL_GAME_KEYSet 1
        set NULL_GAME_KEYValue $value
    }
}


