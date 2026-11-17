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
# package org.allbinary.game.displayable.canvas

oo::class create ::GameCanvasRunnableInterface {
    superclass ::JObject
}

oo::define ::GameCanvasRunnableInterface {
    method initFields_GameCanvasRunnableInterface {} {
        return
    }
    

    method getTitle {} {
        error [jexception AbstractMethodError getTitle]
    }
    

    method isInitialized {} {
        error [jexception AbstractMethodError isInitialized]
    }
    

    method isPaused {} {
        error [jexception AbstractMethodError isPaused]
    }
    

    method unPause {} {
        error [jexception AbstractMethodError unPause]
    }
    

    method pause {} {
        error [jexception AbstractMethodError pause]
    }
    

    method isHighScoreSubmitted {} {
        error [jexception AbstractMethodError isHighScoreSubmitted]
    }
    

    method setHighScoreSubmitted {highScoreSubmitted} {
        error [jexception AbstractMethodError setHighScoreSubmitted]
    }
    

    method processGameOver {} {
        error [jexception AbstractMethodError processGameOver]
    }
    

    method isGameOver {} {
        error [jexception AbstractMethodError isGameOver]
    }
    

    method initCommands {cmdListener} {
        error [jexception AbstractMethodError initCommands]
    }
    

    method getCurrentStateHashtable {} {
        error [jexception AbstractMethodError getCurrentStateHashtable]
    }
    

    method getLoadStateHashtable {} {
        error [jexception AbstractMethodError getLoadStateHashtable]
    }
    

    method setLoadStateHashtable {hashtable} {
        error [jexception AbstractMethodError setLoadStateHashtable]
    }
    

    method getType {} {
        error [jexception AbstractMethodError getType]
    }
}

namespace eval ::GameCanvasRunnableInterface {
}


