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
# package org.allbinary.logic.util.cache

oo::class create ::BasicArrayListPool {
    superclass ::AbstractArrayListPool
}

oo::define ::BasicArrayListPool {
    method initFields_BasicArrayListPool {} {
        return
    }
    

    constructor {cacheableInterfaceFactoryInterface} {
        next $cacheableInterfaceFactoryInterface
        my initFields_BasicArrayListPool
    }
    

    method clear {} {
        [my jget buffers] clear
    }
    

    method remove {key} {
        set size [[my jget buffers] size]
        if {[expr {$size > 0}]} {
            return [[my jget buffers] removeAt [jint [expr {$size - 1}]]]
        } else {
            return [[my jget cacheableInterfaceFactoryInterface] getInstance $key]
        }
    }
    

    method addAll {usedList} {
        for {set index [$usedList size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set anyType [[$usedList jget objectArray] get $index]
            my add $anyType
        }
        $usedList clear
    }
    

    method releaseUsedBackToPool {usedList} {
        for {set index [$usedList size]} {[expr {[jpreincr index -1] >= 0}]} {} {
            set list [[$usedList jget objectArray] get $index]
            if {[expr {[$list size] == 0}]} {
                $usedList removeAt $index
                my add $list
            }
        }
    }
}

namespace eval ::BasicArrayListPool {
}


