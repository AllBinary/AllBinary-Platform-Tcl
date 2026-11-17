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
# package org.allbinary.game.combat.weapon

oo::class create ::SimpleWeaponProperties {
    superclass ::JObject
}

oo::define ::SimpleWeaponProperties {
    method initFields_SimpleWeaponProperties {} {
        my jset damage 0
        my jset dissipation 0
        my jset range 0
        my jset damage 0
        my jset dissipation 0
        my jset range 0
        return
    }

    constructor {} {
        next
        my initFields_SimpleWeaponProperties
    }
    

    method set {simpleWeaponProperties} {
        my setDamage [$simpleWeaponProperties getDamage]
        my setDissipation [$simpleWeaponProperties getDissipation]
        my setRange [$simpleWeaponProperties getRange]
    }
    

    method setDamage {damage} {
        my jset damage $damage
    }
    

    method getDamage {} {
        return [my jget damage]
    }
    

    method setDissipation {dissipation} {
        my jset dissipation $dissipation
    }
    

    method getDissipation {} {
        return [my jget dissipation]
    }
    

    method getRange {} {
        return [my jget range]
    }
    

    method setRange {range} {
        my jset range $range
    }
}

namespace eval ::SimpleWeaponProperties {
}


