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
# package org.allbinary.game.init

oo::class create ::BaseGameInitialization {
    superclass ::JObject
}

oo::define ::BaseGameInitialization {
    method initFields_BaseGameInitialization {} {
        my jset resourceInitializationArray {}
        my jset portion 0
        my jset initialized false
        my jset EARLY_RESOURCES 0
        my jset GAME_RESOURCES 0
        my jset EARLY_CHANGABLE_RESOURCES 0
        my jset GAME_CHANGABLE_RESOURCES 0
        my jset gameInitialized false
        my jset allLoaded false
        
        
        my jset initialized false
        my jset EARLY_RESOURCES 0
        my jset GAME_RESOURCES 1
        my jset EARLY_CHANGABLE_RESOURCES 2
        my jset GAME_CHANGABLE_RESOURCES 3
        my jset gameInitialized false
        my jset allLoaded false
        return
    }
    

    constructor {resourceInitializationArray portion} {
        next
        my initFields_BaseGameInitialization
        my jset resourceInitializationArray $resourceInitializationArray
        my jset portion $portion
    }
    

    method initKey {portion} {
    }
    

    method initKeyMapping {abeClientInformation portion} {
        if {[[::ChangedGameFeatureListener::getInstance] isChangedFeature [[::InputFeatureFactory::getInstance] jget INPUT_MAPPING]]} {
            [[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] init $abeClientInformation
            [::ProgressCanvasFactory::getInstance] addNormalPortion 50 "Game Keys"
            [::ChangedGameFeatureListener::getInstance] remove [[::InputFeatureFactory::getInstance] jget INPUT_MAPPING]
        }
    }
    

    method init {abeClientInformation commandListener level} {
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        if {[expr {[expr {![my isInitialized]}] && ([expr {[expr {$level == [[$resourceLoadingLevelFactory jget LOAD_ALL] getLevel]}] || [expr {$level == [[$resourceLoadingLevelFactory jget LOAD_EARLY] getLevel]}]}])}]} {
            set localPortion 40
            if {[expr {$level == [[$resourceLoadingLevelFactory jget LOAD_EARLY] getLevel]}]} {
                set localPortion 8
            }
            my setInitialized true
            my initKey [my getPortion]
            my initKeyMapping $abeClientInformation [my getPortion]
            [::GameKeyEventFactory::getInstance] init
            set progressCanvas [::ProgressCanvasFactory::getInstance]
            $progressCanvas addNormalPortion $localPortion "Game Key Events"
            [::BasicTouchInputFactory::getInstance] init [[[::PlatformInputMappingFactory::getInstance] getPersistentInputMappingInstance] getInputMapping]
            ::CancelTouchButtonInputFactory::getInstance
            $progressCanvas addNormalPortion $localPortion "Touch Input"
            [::CompleteMotionGestureInputToGameMotionGestureInput::getInstance] init
            $progressCanvas addNormalPortion $localPortion "Motion Input"
            ::GameFeatureImageCacheFactory::init
            $progressCanvas addNormalPortion $localPortion "Image Cache"
            [[my jget resourceInitializationArray] get [my jget EARLY_RESOURCES]] init
        }
    }
    

    method resourceInitialization {level} {
        set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
        if {[expr {[my resourceAnimationChange] && [expr {$level == [[$resourceLoadingLevelFactory jget LOAD_EARLY] getLevel]}]}]} {
            my clearResources
            [[my jget resourceInitializationArray] get [my jget EARLY_CHANGABLE_RESOURCES]] init
        }
        if {[expr {[my resourceAnimationChange] && [expr {$level == [[$resourceLoadingLevelFactory jget LOAD_ALL] getLevel]}]}]} {
            if {[my jget allLoaded]} {
                my clearResources
            }
            if {[expr {[[[::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance] getList] size] == 0}]} {
                [[my jget resourceInitializationArray] get [my jget EARLY_CHANGABLE_RESOURCES]] init
            }
            [[my jget resourceInitializationArray] get [my jget GAME_CHANGABLE_RESOURCES]] init
            my jset allLoaded true
        }
    }
    

    method resourceAnimationChange {} {
        set changedGameFeatureListener [::ChangedGameFeatureListener::getInstance]
        set gameConfigurationCentral [::GameConfigurationCentral::getInstance]
        if {[$changedGameFeatureListener isChangedGameConfiguration [$gameConfigurationCentral jget SCALE]]} {
            return true
        }
        if {[[::ChangedGameFeatureListener::getInstance] isChangedFeature [[::MainFeatureFactory::getInstance] jget STATIC]]} {
            return true
        }
        return false
    }
    

    method clearResources {} {
        my jset allLoaded false
        ::GameFeatureImageCacheFactory::releaseAll
        set featuredAnimationInterfaceFactoryInterfaceFactory [::FeaturedAnimationInterfaceFactoryInterfaceFactory::getInstance]
        $featuredAnimationInterfaceFactoryInterfaceFactory clear
        [::FeaturedResourceRelativeRelationshipFactory::getInstance] clear
    }
    

    method setGameInitialized {gameInitialized} {
        my jset gameInitialized $gameInitialized
    }
    

    method isGameInitialized {} {
        return [my jget gameInitialized]
    }
    

    method getPortion {} {
        return [my jget portion]
    }
    

    method setInitialized {initialized} {
        my jset initialized $initialized
    }
    

    method isInitialized {} {
        return [my jget initialized]
    }
}

namespace eval ::BaseGameInitialization {
    variable NULL_BASE_GAME_INITIALIZATIONValue {}
    variable NULL_BASE_GAME_INITIALIZATIONSet 0
    proc staticGet_NULL_BASE_GAME_INITIALIZATION {} {
        variable NULL_BASE_GAME_INITIALIZATIONValue
        variable NULL_BASE_GAME_INITIALIZATIONSet
        if {!$NULL_BASE_GAME_INITIALIZATIONSet} {
            set NULL_BASE_GAME_INITIALIZATIONSet 1
            set NULL_BASE_GAME_INITIALIZATIONValue [::BaseGameInitialization new [jarray 0 {}] 0]
        }
        return $NULL_BASE_GAME_INITIALIZATIONValue
    }
    proc staticSet_NULL_BASE_GAME_INITIALIZATION {value} {
        variable NULL_BASE_GAME_INITIALIZATIONValue
        variable NULL_BASE_GAME_INITIALIZATIONSet
        set NULL_BASE_GAME_INITIALIZATIONSet 1
        set NULL_BASE_GAME_INITIALIZATIONValue $value
    }
}


