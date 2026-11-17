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

oo::class create ::HighScoresInterface {
    superclass ::JObject
}

oo::define ::HighScoresInterface {
    method initFields_HighScoresInterface {} {
        return
    }
    

    method getList {} {
        error [jexception AbstractMethodError getList]
    }
    

    method addHighScore {newHighScore} {
        error [jexception AbstractMethodError addHighScore]
    }
    

    method getTotal {} {
        error [jexception AbstractMethodError getTotal]
    }
    

    method isBestScore {newHighScore} {
        error [jexception AbstractMethodError isBestScore]
    }
}

namespace eval ::HighScoresInterface {
}


