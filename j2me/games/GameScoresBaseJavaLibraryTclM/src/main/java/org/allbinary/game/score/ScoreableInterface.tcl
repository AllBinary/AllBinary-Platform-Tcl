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

oo::class create ::ScoreableInterface {
    superclass ::JObject
}

oo::define ::ScoreableInterface {
    method initFields_ScoreableInterface {} {
        return
    }
    

    method getPoints {} {
        error [jexception AbstractMethodError getPoints]
    }
    

    method addPoints {points} {
        error [jexception AbstractMethodError addPoints]
    }
    

    method removePoints {points} {
        error [jexception AbstractMethodError removePoints]
    }
}

namespace eval ::ScoreableInterface {
}


