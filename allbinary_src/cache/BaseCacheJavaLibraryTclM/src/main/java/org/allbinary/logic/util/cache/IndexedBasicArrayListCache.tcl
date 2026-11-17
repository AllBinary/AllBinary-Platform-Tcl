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

oo::class create ::IndexedBasicArrayListCache {
    superclass ::BaseBasicArrayListCache
}

oo::define ::IndexedBasicArrayListCache {
    method initFields_IndexedBasicArrayListCache {} {
        my jset commonStrings {}
        my jset size 0
        my jset index 0
        my jset commonStrings [::CommonStrings::getInstance]
        my jset size 0
        my jset index 0
        return
    }
    
    

    constructor {} {
        next
        my initFields_IndexedBasicArrayListCache
    }
    

    method init {size} {
        if {[expr {[my jget size] < $size}]} {
            [my jget list] ensureCapacity $size
            for {set index [jint [expr {$size - 1}]]} {[expr {$index >= [my jget size]}]} {jpostincr index -1} {
                my addDefault
            }
            my jset size $size
        }
    }
    

    method getAt {index} {
        return [[[my jget list] jget objectArray] get $index]
    }
    

    method addDefault {} {
    }
    

    method addObject {anyType} {
        [my jget list] add $anyType
    }
    

    method add {cacheableInterface} {
        [my jget list] add $cacheableInterface
    }
    

    method addArray {cacheableInterfaces} {
        error [jexception Exception "No Imple"]
    }
    

    method clear {} {
        my jset index 0
    }
}

namespace eval ::IndexedBasicArrayListCache {
    proc createCache {size} {
        set indexedBasicArrayListCache [::IndexedBasicArrayListCache new]
        $indexedBasicArrayListCache init $size
        return $indexedBasicArrayListCache
    }
}


