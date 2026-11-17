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
# package org.allbinary.game.ag.layer.pickup.health

oo::class create ::HealPickedUpLayerInterfaceFactory {
    superclass ::PickedUpLayerInterfaceFactory
}

oo::define ::HealPickedUpLayerInterfaceFactory {
    method initFields_HealPickedUpLayerInterfaceFactory {} {
        my jset pool {}
        my jset pool [::HealLayerCircularStaticPool new [::HealLayerFactory new] 1]
        return
    }
    
    

    constructor {} {
        next [[::PickedUpLayerTypeFactory::getInstance] jget HEAL] [::IconLayerFactory::getInstance [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::HealthResources::getInstance] jget RESOURCE]] getInstance 0] 10 10] [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::HealthResources::getInstance] jget RESOURCE]] getInstance 0]
        my initFields_HealPickedUpLayerInterfaceFactory
    }
    

    method getTotal {} {
        return 1
    }
    
    

    method process {sourceLayerInterface} {
        [my jget pool] visit $sourceLayerInterface
    }
}

namespace eval ::HealPickedUpLayerInterfaceFactory {
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
        ::HealPickedUpLayerInterfaceFactory::staticSet_pickedUpLayerInterfaceFactoryInterface [::HealPickedUpLayerInterfaceFactory new]
    }
    proc getInstance {} {
        return [::HealPickedUpLayerInterfaceFactory::staticGet_pickedUpLayerInterfaceFactoryInterface]
    }
}


