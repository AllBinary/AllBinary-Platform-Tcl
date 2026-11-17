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
# package org.allbinary.game.ag.layer.pickup.points

oo::class create ::Points20kPickedUpLayerInterfaceFactory {
    superclass ::PickedUpLayerInterfaceFactory
}

oo::define ::Points20kPickedUpLayerInterfaceFactory {
    method initFields_Points20kPickedUpLayerInterfaceFactory {} {
        my jset pool {}
        my jset pool [::PointsLayerCircularStaticPool new [::PointsLayerFactory new [expr {[[::GameConfigurationUtil::getInstance] getCompetitionValue] * 20000}]] 1]
        return
    }
    
    

    constructor {} {
        next [[::PickedUpLayerTypeFactory::getInstance] jget POINTS] [::IconLayerFactory::getInstance [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::PointsResources::getInstance] jget RESOURCE_2]] getInstance 0] 10 10] [[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] get [[::PointsResources::getInstance] jget RESOURCE_2]] getInstance 0]
        my initFields_Points20kPickedUpLayerInterfaceFactory
    }
    

    method getTotal {} {
        return 1
    }
    
    

    method process {sourceLayerInterface} {
        [my jget pool] visit $sourceLayerInterface
    }
}

namespace eval ::Points20kPickedUpLayerInterfaceFactory {
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
        ::Points20kPickedUpLayerInterfaceFactory::staticSet_pickedUpLayerInterfaceFactoryInterface [::Points20kPickedUpLayerInterfaceFactory new]
    }
    proc getInstance {} {
        return [::Points20kPickedUpLayerInterfaceFactory::staticGet_pickedUpLayerInterfaceFactoryInterface]
    }
}


