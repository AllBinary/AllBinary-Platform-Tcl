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
# package org.allbinary.game.part.weapon

oo::class create ::BasicWeaponPartCircularPool {
    superclass ::JObject
}

oo::define ::BasicWeaponPartCircularPool {
    method initFields_BasicWeaponPartCircularPool {} {
        my jset basicWeaponPart {}
        my jset basicWeaponPart [::BasicWeaponPart::staticGet_NULL_BASIC_WEAPON_PART]
        return
    }

    constructor {} {
        next
        my initFields_BasicWeaponPartCircularPool
    }
    

    method init {basicWeaponPartFactoryInterface} {
        my jset basicWeaponPart [$basicWeaponPartFactoryInterface getInstance]
    }
    

    method getInstance {sourceLayerInterface weaponProperties scoreableInterface relativeRelationship} {
        [my jget basicWeaponPart] init $sourceLayerInterface $weaponProperties $scoreableInterface $relativeRelationship
        return [my jget basicWeaponPart]
    }
}

namespace eval ::BasicWeaponPartCircularPool {
    variable NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue {}
    variable NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet 0
    proc staticGet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL {} {
        variable NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue
        variable NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet
        if {!$NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet} {
            set NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet 1
            set NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue [::BasicWeaponPartCircularPool new]
        }
        return $NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue
    }
    proc staticSet_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL {value} {
        variable NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue
        variable NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet
        set NULL_BASIC_WEAPON_PART_CIRCULAR_POOLSet 1
        set NULL_BASIC_WEAPON_PART_CIRCULAR_POOLValue $value
    }
}


