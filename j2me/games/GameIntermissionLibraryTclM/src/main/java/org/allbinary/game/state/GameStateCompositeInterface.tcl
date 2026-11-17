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
# package org.allbinary.game.state

oo::class create ::GameStateCompositeInterface {
    superclass ::JObject
}

oo::define ::GameStateCompositeInterface {
    method initFields_GameStateCompositeInterface {} {
        return
    }
    

    method setGameState {gameState} {
        error [jexception AbstractMethodError setGameState]
    }
    

    method getGameState {} {
        error [jexception AbstractMethodError getGameState]
    }
}

namespace eval ::GameStateCompositeInterface {
}


