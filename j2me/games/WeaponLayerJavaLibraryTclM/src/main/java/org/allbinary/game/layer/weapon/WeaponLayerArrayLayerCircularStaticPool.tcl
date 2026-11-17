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
# package org.allbinary.game.layer.weapon

oo::class create ::WeaponLayerArrayLayerCircularStaticPool {
    superclass ::JObject
}

oo::define ::WeaponLayerArrayLayerCircularStaticPool {
    method initFields_WeaponLayerArrayLayerCircularStaticPool {} {
        my jset MAX 0
        my jset circularIndexUtil {}
        my jset WEAPONLAYER_ARRAY {}
        my jset TWO_WEAPONLAYER_ARRAY {}
        my jset THREE_WEAPONLAYER_ARRAY {}
        my jset MAX 5
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [my jget MAX]]
        my jset WEAPONLAYER_ARRAY {}
        my jset TWO_WEAPONLAYER_ARRAY {}
        my jset THREE_WEAPONLAYER_ARRAY {}
        return
    }

    constructor {} {
        next
        my initFields_WeaponLayerArrayLayerCircularStaticPool
    }
    
    

    method init {} {
        set WEAPONLAYER_ARRAY [jarray [jint [expr {[my jget MAX] * 2}]] {}]
        set TWO_WEAPONLAYER_ARRAY [jarray [my jget MAX] {}]
        set THREE_WEAPONLAYER_ARRAY [jarray [my jget MAX] {}]
        for {set index 0} {[expr {$index < [my jget MAX]}]} {jpostincr index 1} {
            $WEAPONLAYER_ARRAY set $index [jarray 1 {}]
            $TWO_WEAPONLAYER_ARRAY set $index [jarray 2 {}]
            $THREE_WEAPONLAYER_ARRAY set $index [jarray 3 {}]
        }
        my jset WEAPONLAYER_ARRAY $WEAPONLAYER_ARRAY
        my jset TWO_WEAPONLAYER_ARRAY $TWO_WEAPONLAYER_ARRAY
        my jset THREE_WEAPONLAYER_ARRAY $THREE_WEAPONLAYER_ARRAY
    }
    

    method getWeaponLayerArrays {size} {
        if {[expr {$size == 1}]} {
            return [my jget WEAPONLAYER_ARRAY]
        } elseif {[expr {$size == 2}]} {
            return [my jget TWO_WEAPONLAYER_ARRAY]
        } elseif {[expr {$size == 3}]} {
            return [my jget THREE_WEAPONLAYER_ARRAY]
        }
        error [jexception RuntimeException {}]
    }
    

    method getInstanceArray {size} {
        set weaponLayerArray [[my getWeaponLayerArrays $size] get [[my jget circularIndexUtil] getIndex]]
        [my jget circularIndexUtil] next
        return $weaponLayerArray
    }
}

namespace eval ::WeaponLayerArrayLayerCircularStaticPool {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::WeaponLayerArrayLayerCircularStaticPool new]
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
        return [::WeaponLayerArrayLayerCircularStaticPool::staticGet_instance]
    }
}


