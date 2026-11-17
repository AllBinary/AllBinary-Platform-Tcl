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

oo::class create ::AbstractArrayListPool {
    superclass ::JObject
}

oo::define ::AbstractArrayListPool {
    method initFields_AbstractArrayListPool {} {
        my jset commonStrings {}
        my jset buffers {}
        my jset cacheableInterfaceFactoryInterface {}
        my jset commonStrings [::CommonStrings::getInstance]
        my jset buffers [::BasicArrayListD new]
        
        return
    }
    

    constructor {cacheableInterfaceFactoryInterface} {
        next
        my initFields_AbstractArrayListPool
        my jset cacheableInterfaceFactoryInterface $cacheableInterfaceFactoryInterface
    }
    

    method clear {} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method remove {key} {
        error [jexception Exception [[my jget commonStrings] jget NOT_IMPLEMENTED]]
    }
    

    method add {cacheableInterface} {
        [my jget buffers] add $cacheableInterface
    }
    

    method addArray {cacheableInterfaces} {
        for {set index 0} {[expr {$index < [$cacheableInterfaces length]}]} {jpostincr index 1} {
            [my jget buffers] add [$cacheableInterfaces get $index]
        }
    }
}

namespace eval ::AbstractArrayListPool {
}


