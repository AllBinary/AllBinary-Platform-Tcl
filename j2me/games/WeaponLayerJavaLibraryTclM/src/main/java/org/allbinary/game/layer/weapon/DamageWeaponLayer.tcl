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

oo::class create ::DamageWeaponLayer {
    superclass ::WeaponLayer
}

oo::define ::DamageWeaponLayer {
    method initFields_DamageWeaponLayer {} {
        return
    }
    

    constructor {name remoteInfo movement animationInterface destroyedAnimationInterface rectangle viewPosition username actorSessionId id multiPlayerType} {
        next $name $remoteInfo $multiPlayerType $movement $animationInterface $destroyedAnimationInterface $rectangle $viewPosition
        my initFields_DamageWeaponLayer
        my setCollidableInferface [::CollidableDamageWeaponBehavior new true]
    }
}

namespace eval ::DamageWeaponLayer {
}


