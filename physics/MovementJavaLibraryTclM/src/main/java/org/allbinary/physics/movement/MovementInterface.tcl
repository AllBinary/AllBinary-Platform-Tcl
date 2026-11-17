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
# package org.allbinary.physics.movement

oo::class create ::MovementInterface {
    superclass ::JObject
}

oo::define ::MovementInterface {
    method initFields_MovementInterface {} {
        return
    }
    

    method init {speedBasicDecimal angle otherAngle} {
        error [jexception AbstractMethodError init]
    }
    

    method process {layer} {
        error [jexception AbstractMethodError process]
    }
    

    method stop {} {
        error [jexception AbstractMethodError stop]
    }
}

namespace eval ::MovementInterface {
}


