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
# package org.allbinary.game.ag.life

oo::class create ::LifeInterface {
    superclass ::JObject
}

oo::define ::LifeInterface {
    method initFields_LifeInterface {} {
        return
    }
    

    method get {} {
        error [jexception AbstractMethodError get]
    }
    

    method set {lives} {
        error [jexception AbstractMethodError set]
    }
    

    method reset {} {
        error [jexception AbstractMethodError reset]
    }
    

    method add {lives} {
        error [jexception AbstractMethodError add]
    }
    

    method deaths {lives} {
        error [jexception AbstractMethodError deaths]
    }
    

    method getMaxlives {} {
        error [jexception AbstractMethodError getMaxlives]
    }
    

    method isAlive {} {
        error [jexception AbstractMethodError isAlive]
    }
}

namespace eval ::LifeInterface {
}


