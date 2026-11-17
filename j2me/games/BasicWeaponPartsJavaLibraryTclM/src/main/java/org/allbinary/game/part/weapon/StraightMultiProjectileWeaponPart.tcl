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

oo::class create ::StraightMultiProjectileWeaponPart {
    superclass ::BasicWeaponPart
}

oo::define ::StraightMultiProjectileWeaponPart {
    method initFields_StraightMultiProjectileWeaponPart {} {
        my jset weaponLayerCircularStaticPool {}
        my jset total 0
        my jset noDecimalTrigTable {}
        
        
        my jset noDecimalTrigTable [::NoDecimalTrigTable::getInstance]
        return
    }
    
    

    constructor {animationInterface sourceLayerInterface weaponLayerCircularStaticPool total weaponProperties scoreableInterface relativeRelationship} {
        next $animationInterface $sourceLayerInterface $weaponProperties $scoreableInterface $relativeRelationship
        my initFields_StraightMultiProjectileWeaponPart
        my jset total $total
        my jset weaponLayerCircularStaticPool $weaponLayerCircularStaticPool
    }
    

    method processScore {allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface} {
        set sourceLayerInterface [my getOwnerLayerInterface]
        set reducedWidth ([expr {[expr {[$sourceLayerInterface getWidth] * 8}] / 10}])
        set halfWidth ([expr {$reducedWidth >> 1}])
        set x [[my jget relativeRelationship] getX]
        set y [[my jget relativeRelationship] getY]
        set sine 0
        set beamX 0
        set cosine 0
        set beamY 0
        set weaponLayer {}
        set increment [jdiv $reducedWidth ([jint [expr {[my jget total] - 1}]])]
        set next [expr {-$halfWidth}]
        for {set index 0} {[expr {$index < [my jget total]}]} {jpostincr index 1} {
            set sine ([expr {$next * [[my jget noDecimalTrigTable] sin [jint $angle]]}])
            set beamX [jint ([expr {$sine / [[my jget noDecimalTrigTable] jget SCALE]}])]
            set cosine ([expr {$next * [[my jget noDecimalTrigTable] cos [jint $angle]]}])
            set beamY [expr {-[jint ([expr {$cosine / [[my jget noDecimalTrigTable] jget SCALE]}])]}]
            set weaponLayer [[my jget weaponLayerCircularStaticPool] getInstanceWeaponLayer $sourceLayerInterface [jint [expr {$x + $beamX}]] [jint [expr {$y + $beamY}]] 0 [jint $angle] [jint $otherAngle] $weaponProperties $scoreableInterface]
            $allbinaryLayerManager append $weaponLayer
            set next [jint [expr {$next + $increment}]]
        }
    }
}

namespace eval ::StraightMultiProjectileWeaponPart {
    proc createStraightMultiProjectileWeaponPart {animationInterface weaponLayerCircularStaticPool} {
        return [::StraightMultiProjectileWeaponPart new $animationInterface [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER] $weaponLayerCircularStaticPool 2 [::WeaponProperties::staticGet_NULL_WEAPON_PROPERTIES] [::NoScoreable::getInstance] [::RelativeRelationship::staticGet_NULL_RELATIVE_RELATIONSHIP]]
    }
}


