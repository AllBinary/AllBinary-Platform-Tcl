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

oo::class create ::ArcedMultiBeamWeaponPart {
    superclass ::BasicWeaponPart
}

oo::define ::ArcedMultiBeamWeaponPart {
    method initFields_ArcedMultiBeamWeaponPart {} {
        my jset weaponLayerCircularStaticPool {}
        my jset total 0
        my jset TOTAL_ANGLE 0
        
        
        my jset TOTAL_ANGLE [jint [[::AngleFactory::getInstance] jget TOTAL_ANGLE]]
        return
    }
    

    constructor {animationInterface sourceLayerInterface weaponLayerCircularStaticPool total weaponProperties scoreableInterface relativeRelationship} {
        next $animationInterface $sourceLayerInterface $weaponProperties $scoreableInterface $relativeRelationship
        my initFields_ArcedMultiBeamWeaponPart
        my jset total $total
        my jset weaponLayerCircularStaticPool $weaponLayerCircularStaticPool
    }
    

    method processScore {allbinaryLayerManager angle otherAngle weaponProperties scoreableInterface} {
        set increment [jshort ([jdiv ([jint [expr {[my jget total] - 1}]]) [my jget TOTAL_ANGLE]])]
        set minAngle [jshort ([jint [expr {[jint $angle] - ([expr {([jint [expr {[jint $increment] * [my jget total]}]]) >> 1}])}]])]
        set next 0
        set weaponLayer {}
        for {set index 0} {[expr {$index < [my jget total]}]} {jpostincr index 1} {
            set weaponLayer [[my jget weaponLayerCircularStaticPool] getInstanceWeaponLayer [my getOwnerLayerInterface] [[my jget relativeRelationship] getX] [[my jget relativeRelationship] getY] 0 ([jint [expr {$minAngle + $increment}]]) [jint $otherAngle] $weaponProperties $scoreableInterface]
            $allbinaryLayerManager append $weaponLayer
            set next [jint [expr {$next + [jint $increment]}]]
        }
    }
}

namespace eval ::ArcedMultiBeamWeaponPart {
}


