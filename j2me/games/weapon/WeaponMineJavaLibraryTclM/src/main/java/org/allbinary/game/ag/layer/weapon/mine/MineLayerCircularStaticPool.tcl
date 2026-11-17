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

oo::class create ::MineLayerCircularStaticPool {
    superclass ::JObject
}

oo::define ::MineLayerCircularStaticPool {
    method initFields_MineLayerCircularStaticPool {} {
        return
    }

    constructor {} {
        next
        my initFields_MineLayerCircularStaticPool
    }
    
    
}

namespace eval ::MineLayerCircularStaticPool {
    variable WEAPON_LAYER_CIRCULAR_STATIC_POOLValue {}
    variable WEAPON_LAYER_CIRCULAR_STATIC_POOLSet 0
    proc staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL {} {
        variable WEAPON_LAYER_CIRCULAR_STATIC_POOLValue
        variable WEAPON_LAYER_CIRCULAR_STATIC_POOLSet
        if {!$WEAPON_LAYER_CIRCULAR_STATIC_POOLSet} {
            set WEAPON_LAYER_CIRCULAR_STATIC_POOLSet 1
            set WEAPON_LAYER_CIRCULAR_STATIC_POOLValue [::WeaponLayerCircularPool new]
        }
        return $WEAPON_LAYER_CIRCULAR_STATIC_POOLValue
    }
    proc staticSet_WEAPON_LAYER_CIRCULAR_STATIC_POOL {value} {
        variable WEAPON_LAYER_CIRCULAR_STATIC_POOLValue
        variable WEAPON_LAYER_CIRCULAR_STATIC_POOLSet
        set WEAPON_LAYER_CIRCULAR_STATIC_POOLSet 1
        set WEAPON_LAYER_CIRCULAR_STATIC_POOLValue $value
    }
    proc init {viewPositionFactoryInterface} {
        ::MineCountedPickedUpLayerInterfaceFactory::init
        [::MineLayerCircularStaticPool::staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL] initAllBinaryLayerCircularPool [::MineLayerFactory new $viewPositionFactoryInterface] 20
    }
    proc getInstance {} {
        return [::MineLayerCircularStaticPool::staticGet_WEAPON_LAYER_CIRCULAR_STATIC_POOL]
    }
}


