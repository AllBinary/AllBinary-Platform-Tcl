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
# package org.allbinary.game.score

oo::class create ::HighScoresFactoryInterface {
    superclass ::JObject
}

oo::define ::HighScoresFactoryInterface {
    method initFields_HighScoresFactoryInterface {} {
        return
    }
    

    method fetchHighScores {gameInfo highScoresResultsListener} {
        error [jexception AbstractMethodError fetchHighScores]
    }
    

    method fetchHighScoresPreload {gameInfo highScoresResultsListener preload} {
        error [jexception AbstractMethodError fetchHighScoresPreload]
    }
    

    method createHighScoresHelper {} {
        error [jexception AbstractMethodError createHighScoresHelper]
    }
}

namespace eval ::HighScoresFactoryInterface {
}


