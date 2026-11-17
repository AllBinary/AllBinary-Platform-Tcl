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

oo::class create ::Advertisements {
    superclass ::JObject
}

oo::define ::Advertisements {
    method initFields_Advertisements {} {
        my jset bannerList {}
        my jset pageList {}
        my jset myRandomFactory {}
        my jset bannerList [::BasicArrayListD new]
        my jset pageList [::BasicArrayListD new]
        my jset myRandomFactory [::MyRandomFactory::getInstance]
        return
    }

    constructor {} {
        next
        my initFields_Advertisements
    }
    

    method addPage {advertisementProcessorInterface} {
        if {[expr {![[my jget pageList] contains $advertisementProcessorInterface]}]} {
            [my jget pageList] add $advertisementProcessorInterface
        }
    }
    

    method startRandomPage {} {
        set size [[my jget pageList] size]
        if {[expr {$size > 0}]} {
            set random [[my jget myRandomFactory] getAbsoluteNextInt $size]
            set advertisementProcessorInterface [[[my jget pageList] jget objectArray] get $random]
            $advertisementProcessorInterface start
        }
    }
    

    method processRandomPage {} {
        if {[[::LockedUtil::getInstance] isLocked]} {
            set size [[my jget pageList] size]
            if {[expr {$size > 0}]} {
                set random [[my jget myRandomFactory] getAbsoluteNextInt $size]
                set advertisementProcessorInterface [[[my jget pageList] jget objectArray] get $random]
                $advertisementProcessorInterface process
            }
        }
    }
    

    method stopAllPage {} {
        for {set index [[my jget pageList] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set advertisementProcessorInterface [[[my jget pageList] jget objectArray] get $index]
            $advertisementProcessorInterface stop
        }
    }
    

    method addBanner {advertisementProcessorInterface} {
        if {[expr {![[my jget bannerList] contains $advertisementProcessorInterface]}]} {
            [my jget bannerList] add $advertisementProcessorInterface
        }
    }
    

    method startAll {} {
        for {set index [[my jget bannerList] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set advertisementProcessorInterface [[[my jget bannerList] jget objectArray] get $index]
            $advertisementProcessorInterface start
        }
    }
    

    method stopAllBanner {} {
        for {set index [[my jget bannerList] size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set advertisementProcessorInterface [[[my jget bannerList] jget objectArray] get $index]
            $advertisementProcessorInterface stop
        }
    }
    

    method getBanner {index} {
        set advertisementProcessorInterface [[[my jget bannerList] jget objectArray] get $index]
        return $advertisementProcessorInterface
    }
    

    method stopAll {} {
        my stopAllBanner
        my stopAllPage
    }
}

namespace eval ::Advertisements {
}


