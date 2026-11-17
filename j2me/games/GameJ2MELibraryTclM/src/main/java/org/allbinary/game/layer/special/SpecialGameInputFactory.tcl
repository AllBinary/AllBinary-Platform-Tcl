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
# package org.allbinary.game.layer.special

oo::class create ::SpecialGameInputFactory {
    superclass ::JObject
}

oo::define ::SpecialGameInputFactory {
    method initFields_SpecialGameInputFactory {} {
        return
    }

    constructor {} {
        next
        my initFields_SpecialGameInputFactory
    }
}

namespace eval ::SpecialGameInputFactory {
    variable NO_SPECIAL_GAME_INPUTValue {}
    variable NO_SPECIAL_GAME_INPUTSet 0
    proc staticGet_NO_SPECIAL_GAME_INPUT {} {
        variable NO_SPECIAL_GAME_INPUTValue
        variable NO_SPECIAL_GAME_INPUTSet
        if {!$NO_SPECIAL_GAME_INPUTSet} {
            set NO_SPECIAL_GAME_INPUTSet 1
            set NO_SPECIAL_GAME_INPUTValue [::SpecialGameInput new]
        }
        return $NO_SPECIAL_GAME_INPUTValue
    }
    proc staticSet_NO_SPECIAL_GAME_INPUT {value} {
        variable NO_SPECIAL_GAME_INPUTValue
        variable NO_SPECIAL_GAME_INPUTSet
        set NO_SPECIAL_GAME_INPUTSet 1
        set NO_SPECIAL_GAME_INPUTValue $value
    }
}


