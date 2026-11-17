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
# package org.allbinary.game.displayable.canvas

oo::class create ::NullAllBinaryGameCanvas {
    superclass ::JObject
}

oo::define ::NullAllBinaryGameCanvas {
    method initFields_NullAllBinaryGameCanvas {} {
        return
    }

    constructor {} {
        next
        my initFields_NullAllBinaryGameCanvas
    }
    

    method getLayerManager {} {
        error [jexception RuntimeException {}]
    }
    

    method addCommand {cmd} {
        error [jexception RuntimeException {}]
    }
    

    method getHeight {} {
        error [jexception RuntimeException {}]
    }
    

    method getWidth {} {
        error [jexception RuntimeException {}]
    }
    

    method removeCommand {cmd} {
        error [jexception RuntimeException {}]
    }
    

    method setCommandListener {l} {
        error [jexception RuntimeException {}]
    }
}

namespace eval ::NullAllBinaryGameCanvas {
    variable NULL_ALLBINARY_GAME_CANVASValue {}
    variable NULL_ALLBINARY_GAME_CANVASSet 0
    proc staticGet_NULL_ALLBINARY_GAME_CANVAS {} {
        variable NULL_ALLBINARY_GAME_CANVASValue
        variable NULL_ALLBINARY_GAME_CANVASSet
        if {!$NULL_ALLBINARY_GAME_CANVASSet} {
            set NULL_ALLBINARY_GAME_CANVASSet 1
            set NULL_ALLBINARY_GAME_CANVASValue [::NullAllBinaryGameCanvas new]
        }
        return $NULL_ALLBINARY_GAME_CANVASValue
    }
    proc staticSet_NULL_ALLBINARY_GAME_CANVAS {value} {
        variable NULL_ALLBINARY_GAME_CANVASValue
        variable NULL_ALLBINARY_GAME_CANVASSet
        set NULL_ALLBINARY_GAME_CANVASSet 1
        set NULL_ALLBINARY_GAME_CANVASValue $value
    }
}


