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

oo::class create ::DamageUtil {
    superclass ::JObject
}

oo::define ::DamageUtil {
    method initFields_DamageUtil {} {
        my jset logUtil {}
        my jset COLLIDE {}
        my jset logUtil [::LogUtil::getInstance]
        my jset COLLIDE "collide"
        return
    }
    
    

    constructor {} {
        next
        my initFields_DamageUtil
    }
    

    method process {damageableInterface damageableInterface2} {
        $damageableInterface damage [$damageableInterface2 getDamage 0] 0
    }
    

    method debugDamage {collidableInterfaceCompositeInterface1 collidableInterfaceCompositeInterface} {
        set collidableDestroyableDamageableLayer $collidableInterfaceCompositeInterface
        set damage [$collidableDestroyableDamageableLayer getDamage 0]
        if {[expr {$damage > 20000}]} {
            set stringBuffer [::StringMaker new]
            $stringBuffer append "Collision "
            $stringBuffer append [$collidableInterfaceCompositeInterface1 toString]
            $stringBuffer append " with: "
            $stringBuffer append [$collidableInterfaceCompositeInterface toString]
            $stringBuffer append " damage: "
            $stringBuffer appendint $damage
            [my jget logUtil] putF [$stringBuffer toString] $collidableInterfaceCompositeInterface1 [my jget COLLIDE]
        }
    }
}

namespace eval ::DamageUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::DamageUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::DamageUtil::staticGet_instance]
    }
}


