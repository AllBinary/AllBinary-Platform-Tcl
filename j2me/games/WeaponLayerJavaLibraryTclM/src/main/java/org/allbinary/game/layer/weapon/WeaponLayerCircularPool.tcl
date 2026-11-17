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

oo::class create ::WeaponLayerCircularPool {
    superclass ::AllBinaryLayerCircularPool
}

oo::define ::WeaponLayerCircularPool {
    method initFields_WeaponLayerCircularPool {} {
        return
    }
    

    constructor {} {
        next
        my initFields_WeaponLayerCircularPool
    }
    

    method getInstanceWeaponLayer {sourceLayerInterface x y z angle otherAngle weaponProperties scoreable} {
        set weaponLayer [next]
        $weaponLayer initXYZ $x $y $z
        $weaponLayer init $sourceLayerInterface $angle $otherAngle $weaponProperties $scoreable
        return $weaponLayer
    }
}

namespace eval ::WeaponLayerCircularPool {
}


