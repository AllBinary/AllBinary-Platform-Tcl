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

oo::class create ::GameInitializationUtil {
    superclass ::JObject
}

oo::define ::GameInitializationUtil {
    method initFields_GameInitializationUtil {} {
        my jset EVENT {}
        my jset EVENT [::GameInitializedEvent new [self]]
        return
    }

    constructor {} {
        next
        my initFields_GameInitializationUtil
    }
    

    method initDemo {abeClientInformation canvas gameInitializationInterfaceFactoryInterface} {
        set mainFeatureFactory [::MainFeatureFactory::getInstance]
        if {[[::ChangedGameFeatureListener::getInstance] isChangedFeature [$mainFeatureFactory jget STATIC]]} {
            set gameInitializationInterface [$gameInitializationInterfaceFactoryInterface getInstance]
            set features [::Features::getInstance]
            if {[$features isFeature [$mainFeatureFactory jget LOAD_ALL]]} {
                my initGame $abeClientInformation $canvas $gameInitializationInterfaceFactoryInterface
            } elseif {[$features isFeature [$mainFeatureFactory jget LOAD_ONDEMAND]]} {
                set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
                $gameInitializationInterface init $abeClientInformation [$canvas getCustomCommandListener] [[$resourceLoadingLevelFactory jget LOAD_EARLY] getLevel]
                [my jget EVENT] setResourceLoadingLevel [$resourceLoadingLevelFactory jget LOAD_EARLY]
            } else {
                error [jexception Exception "No Loading Feature Available"]
            }
            [::GameInitializedEventHandler::getInstance] fireEvent [my jget EVENT]
        }
    }
    

    method initGame {abeClientInformation canvas gameInitializationInterfaceFactoryInterface} {
        if {[[::ChangedGameFeatureListener::getInstance] isChangedFeature [[::MainFeatureFactory::getInstance] jget STATIC]]} {
            set gameInitializationInterface [$gameInitializationInterfaceFactoryInterface getInstance]
            set resourceLoadingLevelFactory [::ResourceLoadingLevelFactory::getInstance]
            $gameInitializationInterface init $abeClientInformation [$canvas getCustomCommandListener] [[$resourceLoadingLevelFactory jget LOAD_ALL] getLevel]
            [my jget EVENT] setResourceLoadingLevel [$resourceLoadingLevelFactory jget LOAD_ALL]
            [::GameInitializedEventHandler::getInstance] fireEvent [my jget EVENT]
            [::ChangedGameFeatureListener::getInstance] remove [[::MainFeatureFactory::getInstance] jget STATIC]
        }
    }
    
}

namespace eval ::GameInitializationUtil {
    variable instanceValue {}
    variable instanceSet 0
    proc staticGet_instance {} {
        variable instanceValue
        variable instanceSet
        if {!$instanceSet} {
            set instanceSet 1
            set instanceValue [::GameInitializationUtil new]
        }
        return $instanceValue
    }
    proc staticSet_instance {value} {
        variable instanceValue
        variable instanceSet
        set instanceSet 1
        set instanceValue $value
    }
    proc getInstance {} {
        return [::GameInitializationUtil::staticGet_instance]
    }
}


