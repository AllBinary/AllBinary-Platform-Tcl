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
# package org.allbinary.game.combat

oo::class create ::CombatBaseBehavior {
    superclass ::JObject
}

oo::define ::CombatBaseBehavior {
    method initFields_CombatBaseBehavior {} {
        my jset damageableBaseBehavior {}
        my jset destroyableBaseBehavior {}
        my jset readyForExplosion false
        
        
        my jset readyForExplosion false
        return
    }
    

    constructor {damageableBaseBehavior destroyableBaseBehavior} {
        next
        my initFields_CombatBaseBehavior
        my jset damageableBaseBehavior $damageableBaseBehavior
        my jset destroyableBaseBehavior $destroyableBaseBehavior
    }
    

    method getDamageableBaseBehavior {} {
        return [my jget damageableBaseBehavior]
    }
    

    method getDestroyableBaseBehavior {} {
        return [my jget destroyableBaseBehavior]
    }
    

    method isReadyForExplosion {} {
        return [my jget readyForExplosion]
    }
    

    method setReadyForExplosion {readyForExplosion} {
        my jset readyForExplosion $readyForExplosion
    }
}

namespace eval ::CombatBaseBehavior {
    variable NULL_COMBAT_BEHAVIORValue {}
    variable NULL_COMBAT_BEHAVIORSet 0
    proc staticGet_NULL_COMBAT_BEHAVIOR {} {
        variable NULL_COMBAT_BEHAVIORValue
        variable NULL_COMBAT_BEHAVIORSet
        if {!$NULL_COMBAT_BEHAVIORSet} {
            set NULL_COMBAT_BEHAVIORSet 1
            set NULL_COMBAT_BEHAVIORValue [::CombatBaseBehavior new [::DamageableBaseBehavior::getInstance] [::DestroyableBaseBehavior::getInstance]]
        }
        return $NULL_COMBAT_BEHAVIORValue
    }
    proc staticSet_NULL_COMBAT_BEHAVIOR {value} {
        variable NULL_COMBAT_BEHAVIORValue
        variable NULL_COMBAT_BEHAVIORSet
        set NULL_COMBAT_BEHAVIORSet 1
        set NULL_COMBAT_BEHAVIORValue $value
    }
}


