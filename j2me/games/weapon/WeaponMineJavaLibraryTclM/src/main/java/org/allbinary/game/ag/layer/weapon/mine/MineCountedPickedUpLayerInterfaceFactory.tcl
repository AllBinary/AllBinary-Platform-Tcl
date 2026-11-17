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
# package org.allbinary.game.ag.layer.weapon.mine

oo::class create ::MineCountedPickedUpLayerInterfaceFactory {
    superclass ::CountedPickedUpLayerInterfaceFactory
}

oo::define ::MineCountedPickedUpLayerInterfaceFactory {
    method initFields_MineCountedPickedUpLayerInterfaceFactory {} {
        my jset weaponLayerCircularStaticPool {}
        my jset weaponProperties {}
        my jset smallIntegerSingletonFactory {}
        my jset weaponLayerCircularStaticPool [::MineLayerCircularStaticPool::getInstance]
        my jset weaponProperties [::WeaponProperties new [expr {-1}] [expr {-1}] 0 8000 [jshort 10]]
        my jset smallIntegerSingletonFactory [::SmallIntegerSingletonFactory::getInstance]
        return
    }
    
    

    constructor {} {
        next [[::PickedUpLayerTypeFactory::getInstance] jget MINE] [::IconLayerFactory::getInstance [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::MineWeaponResources::getInstance] jget DROP_ICON_RESOURCE]] getInstance 0] 10 10] [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::MineWeaponResources::getInstance] jget DROP_RESOURCE]] getInstance 0]
        my initFields_MineCountedPickedUpLayerInterfaceFactory
    }
    
    

    method getTotal {} {
        return 3
    }
    

    method getNextInstance {hashtable x y z} {
        set sourceLayerInterface [$hashtable get [[my jget smallIntegerSingletonFactory] getAt 0]]
        set angle [$hashtable get [[my jget smallIntegerSingletonFactory] getAt 1]]
        set scoreableInterface $sourceLayerInterface
        return [[my jget weaponLayerCircularStaticPool] getInstanceWeaponLayer $sourceLayerInterface $x $y $z [jint [$angle intValue]] 0 [my jget weaponProperties] $scoreableInterface]
    }
}

namespace eval ::MineCountedPickedUpLayerInterfaceFactory {
    variable pickedUpLayerInterfaceFactoryInterfaceValue {}
    variable pickedUpLayerInterfaceFactoryInterfaceSet 0
    proc staticGet_pickedUpLayerInterfaceFactoryInterface {} {
        variable pickedUpLayerInterfaceFactoryInterfaceValue
        variable pickedUpLayerInterfaceFactoryInterfaceSet
        if {!$pickedUpLayerInterfaceFactoryInterfaceSet} {
            set pickedUpLayerInterfaceFactoryInterfaceSet 1
            set pickedUpLayerInterfaceFactoryInterfaceValue [::CountedPickedUpLayerInterfaceFactory::staticGet_NULL_COUNTED_PICKUP_LAYER_FACTORY]
        }
        return $pickedUpLayerInterfaceFactoryInterfaceValue
    }
    proc staticSet_pickedUpLayerInterfaceFactoryInterface {value} {
        variable pickedUpLayerInterfaceFactoryInterfaceValue
        variable pickedUpLayerInterfaceFactoryInterfaceSet
        set pickedUpLayerInterfaceFactoryInterfaceSet 1
        set pickedUpLayerInterfaceFactoryInterfaceValue $value
    }
    proc init {} {
        ::MineCountedPickedUpLayerInterfaceFactory::staticSet_pickedUpLayerInterfaceFactoryInterface [::MineCountedPickedUpLayerInterfaceFactory new]
    }
    proc getInstance {} {
        return [::MineCountedPickedUpLayerInterfaceFactory::staticGet_pickedUpLayerInterfaceFactoryInterface]
    }
}


