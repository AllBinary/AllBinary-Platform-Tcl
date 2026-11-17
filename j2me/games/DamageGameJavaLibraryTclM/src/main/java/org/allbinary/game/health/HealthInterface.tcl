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
# package org.allbinary.game.health

oo::class create ::HealthInterface {
    superclass ::JObject
}

oo::define ::HealthInterface {
    method initFields_HealthInterface {} {
        return
    }
    

    method isAlive {} {
        error [jexception AbstractMethodError isAlive]
    }
    

    method damage {ahealth} {
        error [jexception AbstractMethodError damage]
    }
    

    method heal {ahealth} {
        error [jexception AbstractMethodError heal]
    }
    

    method healMax {} {
        error [jexception AbstractMethodError healMax]
    }
    

    method getMaxHealth {} {
        error [jexception AbstractMethodError getMaxHealth]
    }
    

    method setMaxHealth {maxHealth} {
        error [jexception AbstractMethodError setMaxHealth]
    }
    

    method getHealth {} {
        error [jexception AbstractMethodError getHealth]
    }
    

    method addListener {healthListenerInterface} {
        error [jexception AbstractMethodError addListener]
    }
}

namespace eval ::HealthInterface {
}


