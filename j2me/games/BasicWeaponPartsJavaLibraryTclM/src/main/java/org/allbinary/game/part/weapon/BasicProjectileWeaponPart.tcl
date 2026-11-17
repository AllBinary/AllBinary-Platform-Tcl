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

oo::class create ::BasicProjectileWeaponPart {
    superclass ::BasicWeaponPart
}

oo::define ::BasicProjectileWeaponPart {
    method initFields_BasicProjectileWeaponPart {} {
        my jset weaponLayerCircularStaticPool {}
        
        return
    }
    
    

    constructor {animationInterface sourceLayerInterface weaponLayerCircularStaticPool weaponProperties scoreableInterface relativeRelationship} {
        next $animationInterface $sourceLayerInterface $weaponProperties $scoreableInterface $relativeRelationship
        my initFields_BasicProjectileWeaponPart
        my jset weaponLayerCircularStaticPool $weaponLayerCircularStaticPool
    }
    

    method processScore {allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface} {
        set weaponLayer [[my jget weaponLayerCircularStaticPool] getInstanceWeaponLayer [my getOwnerLayerInterface] [[my jget relativeRelationship] getX] [[my jget relativeRelationship] getY] [[my jget relativeRelationship] getZ] [jint $angle] [jint $otherAngle] $weaponProperties $scoreableInterface]
        $allbinaryLayerManager append $weaponLayer
    }
}

namespace eval ::BasicProjectileWeaponPart {
    proc createBasicProjectileWeaponPart {animationInterface weaponLayerCircularStaticPool} {
        return [::BasicProjectileWeaponPart new $animationInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER] $weaponLayerCircularStaticPool [::WeaponProperties::staticGet_NULL_WEAPON_PROPERTIES] [::NoScoreable::getInstance] [::RelativeRelationship::staticGet_NULL_RELATIVE_RELATIONSHIP]]
    }
}


