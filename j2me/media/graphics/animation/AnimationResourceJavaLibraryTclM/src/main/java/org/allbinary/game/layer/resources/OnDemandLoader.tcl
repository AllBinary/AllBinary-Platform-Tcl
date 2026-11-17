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
# package org.allbinary.game.layer.resources

oo::class create ::OnDemandLoader {
    superclass ::JObject
}

oo::define ::OnDemandLoader {
    method initFields_OnDemandLoader {} {
        my jset onDemandResourcesFactory {}
        my jset gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory {}
        my jset resourceAnimationInterfaceFactoryInterfaceFactory {}
        
        
        
        return
    }
    

    constructor {onDemandResourcesFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory} {
        next
        my initFields_OnDemandLoader
        my jset onDemandResourcesFactory $onDemandResourcesFactory
        my jset gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory $gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        my jset resourceAnimationInterfaceFactoryInterfaceFactory $resourceAnimationInterfaceFactoryInterfaceFactory
    }
    

    method init {imageCache level loadingString} {
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        if {[[::Features::getInstance] isFeature [[::MainFeatureFactory::getInstance] jget LOAD_ALL]]} {
            if {[[my jget resourceAnimationInterfaceFactoryInterfaceFactory] isInitialized]} {
                return
            }
            my initAll $imageCache $loadingString
        } elseif {[expr {$level != [[$resourceLoadingLevelFactory jget LOAD_ALL] getLevel]}]} {
            set layerPlacementInterfaceBasicArrayListFactoryInterface [[my jget gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory] getInstance $level]
            my initLevel $layerPlacementInterfaceBasicArrayListFactoryInterface $imageCache $level $loadingString
        }
    }
    

    method initAll {imageCache loadingString} {
        set index 0
        set portion 120
        set onDemandResources {}
        for {set onDemandIndex [[my jget onDemandResourcesFactory] size]} {[expr {[jpreincr onDemandIndex -1] >= 0}]} {} {
            set onDemandResources [[my jget onDemandResourcesFactory] remove $onDemandIndex]
            if {[expr {$onDemandResources ne [::OnDemandResources::staticGet_NULL_ON_DEMAND_RESOURCES]}]} {
                set index [$onDemandResources initAt $imageCache [my jget resourceAnimationInterfaceFactoryInterfaceFactory] $portion $loadingString $index]
            }
        }
    }
    

    method initLevel {layerPlacementInterfaceBasicArrayListFactoryInterface imageCache level loadingString} {
        set commonStrings [::CommonStrings::getInstance]
        set portion 120
        set index 0
        set onDemandArray [$layerPlacementInterfaceBasicArrayListFactoryInterface getOnDemandResources]
        ::PreLogUtil::put [[[[::StringMaker new] append [$commonStrings jget START]] appendint [$onDemandArray length]] toString] [self] "initLevel"
        set onDemandResources {}
        for {set onDemandIndex [$onDemandArray length]} {[expr {[jpreincr onDemandIndex -1] >= 0}]} {} {
            set onDemandResources [[my jget onDemandResourcesFactory] remove [$onDemandArray get $onDemandIndex]]
            if {[expr {$onDemandResources ne [::OnDemandResources::staticGet_NULL_ON_DEMAND_RESOURCES]}]} {
                set index [$onDemandResources initAt $imageCache [my jget resourceAnimationInterfaceFactoryInterfaceFactory] $portion $loadingString $index]
            }
        }
    }
}

namespace eval ::OnDemandLoader {
}


