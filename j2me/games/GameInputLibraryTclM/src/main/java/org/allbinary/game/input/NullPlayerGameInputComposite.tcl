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
# package org.allbinary.game.input

oo::class create ::NullPlayerGameInputComposite {
    superclass ::JObject
}

oo::define ::NullPlayerGameInputComposite {
    method initFields_NullPlayerGameInputComposite {} {
        return
    }

    constructor {} {
        next
        my initFields_NullPlayerGameInputComposite
    }
    

    method getName {} {
        return [[::StringUtil::getInstance] jget EMPTY_STRING]
    }
    

    method processInput {layerManager} {
    }
    

    method initInputProcessors {} {
    }
    

    method getPlayerGameInput {} {
        return [::NoPlayerGameInput::getInstance]
    }
}

namespace eval ::NullPlayerGameInputComposite {
    variable NULL_PLAYER_GAME_INPUT_COMPOSITEValue {}
    variable NULL_PLAYER_GAME_INPUT_COMPOSITESet 0
    proc staticGet_NULL_PLAYER_GAME_INPUT_COMPOSITE {} {
        variable NULL_PLAYER_GAME_INPUT_COMPOSITEValue
        variable NULL_PLAYER_GAME_INPUT_COMPOSITESet
        if {!$NULL_PLAYER_GAME_INPUT_COMPOSITESet} {
            set NULL_PLAYER_GAME_INPUT_COMPOSITESet 1
            set NULL_PLAYER_GAME_INPUT_COMPOSITEValue [::NullPlayerGameInputComposite new]
        }
        return $NULL_PLAYER_GAME_INPUT_COMPOSITEValue
    }
    proc staticSet_NULL_PLAYER_GAME_INPUT_COMPOSITE {value} {
        variable NULL_PLAYER_GAME_INPUT_COMPOSITEValue
        variable NULL_PLAYER_GAME_INPUT_COMPOSITESet
        set NULL_PLAYER_GAME_INPUT_COMPOSITESet 1
        set NULL_PLAYER_GAME_INPUT_COMPOSITEValue $value
    }
}


