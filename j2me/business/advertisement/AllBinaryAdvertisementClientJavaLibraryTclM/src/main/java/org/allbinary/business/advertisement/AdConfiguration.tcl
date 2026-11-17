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
# package org.allbinary.business.advertisement

oo::class create ::AdConfiguration {
    superclass ::JObject
}

oo::define ::AdConfiguration {
    method initFields_AdConfiguration {} {
        my jset INNERACTIVE {}
        my jset LEADBOLT {}
        my jset ADMOB {}
        
        
        
        return
    }
    

    constructor {advertIdArray} {
        next
        my initFields_AdConfiguration
        my jset INNERACTIVE [$advertIdArray get 0]
        my jset ADMOB [$advertIdArray get 1]
        my jset LEADBOLT [$advertIdArray get 2]
    }
    

    method getValidAdSpots {} {
        return [jarray 0 {}]
    }
    

    method process {gameState} {
    }
    

    method processDemo {state} {
    }
    

    method setShowAds {} {
    }
    

    method setToggleAds {showAds} {
    }
    

    method isShowAds {} {
        return true
    }
}

namespace eval ::AdConfiguration {
}


