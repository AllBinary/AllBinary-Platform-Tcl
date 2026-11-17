# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.business.advertisement

oo::class create ::GameAdStateBase {
    superclass ::JObject
}

oo::define ::GameAdStateBase {
    method initFields_GameAdStateBase {} {
        my jset adConfigurationP {}
        my jset advertisementsP {}
        my jset okayToShowAdsP false
        
        my jset advertisementsP [::Advertisements new]
        my jset okayToShowAdsP false
        return
    }
    

    constructor {adConfiguration} {
        next
        my initFields_GameAdStateBase
        my jset adConfigurationP $adConfiguration
    }
    

    method initViewArray {viewArray} {
    }
    

    method onStart {anyType} {
        my init
    }
    

    method init {} {
    }
    

    method isShowingAtLocation {location} {
        return false
    }
    

    method isShowingAt {} {
        return false
    }
    

    method show {} {
    }
    

    method hide {} {
    }
    

    method onEvent {eventObject} {
        ::ForcedLogUtil::log [[::EventStrings::getInstance] jget PERFORMANCE_MESSAGE] [self]
    }
    

    method processAdState {gameState gameType} {
    }
    

    method processPageAdState {} {
    }
    

    method playingAdState {} {
    }
    

    method playingAdStateWH {width height} {
    }
    

    method notPlayingAdState {} {
    }
    

    method setGameIsReady {gameIsReady} {
    }
    

    method isGameIsReady {} {
        return false
    }
    

    method getAdvertisements {} {
        return [my jget advertisementsP]
    }
    

    method getAdConfiguration {} {
        return [my jget adConfigurationP]
    }
    

    method isOkayToShowPageAd {} {
        return false
    }
    

    method setOkayToShowAds {okayToShowAds} {
        my jset okayToShowAdsP $okayToShowAds
    }
    

    method isOkayToShowAds {} {
        return [my jget okayToShowAdsP]
    }
    

    method isEnabled {} {
        return false
    }
}

namespace eval ::GameAdStateBase {
}


