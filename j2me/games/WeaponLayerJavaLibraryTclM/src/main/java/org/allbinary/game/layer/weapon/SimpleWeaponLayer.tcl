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

oo::class create ::SimpleWeaponLayer {
    superclass ::WeaponLayer
}

oo::define ::SimpleWeaponLayer {
    method initFields_SimpleWeaponLayer {} {
        return
    }
    
    

    constructor {name remoteInfo multiPlayerType movement animationInterface destroyedAnimationInterface rectangle viewPosition} {
        next $name $remoteInfo $multiPlayerType $movement $animationInterface $destroyedAnimationInterface $rectangle $viewPosition
        my initFields_SimpleWeaponLayer
        my setCollidableInferface [::CollidableWeaponBehavior new true]
    }
}

namespace eval ::SimpleWeaponLayer {
    proc createDestroyed {} {
        return [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] getProcedural [[::ExplosionResources::getInstance] jget THIRD_EXPLOSION_RESOURCE]] getInstanceAnimation [[::NullIndexedAnimationFactory::getFactoryInstance] getInstance 0]]
    }
}


