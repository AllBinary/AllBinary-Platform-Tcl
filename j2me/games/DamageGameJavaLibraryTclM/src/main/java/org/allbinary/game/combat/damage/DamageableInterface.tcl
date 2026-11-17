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
# package org.allbinary.game.combat.damage

oo::class create ::DamageableInterface {
    superclass ::JObject
}

oo::define ::DamageableInterface {
    method initFields_DamageableInterface {} {
        return
    }
    

    method damage {damage damageType} {
        error [jexception AbstractMethodError damage]
    }
    

    method getDamage {damageType} {
        error [jexception AbstractMethodError getDamage]
    }
}

namespace eval ::DamageableInterface {
}


