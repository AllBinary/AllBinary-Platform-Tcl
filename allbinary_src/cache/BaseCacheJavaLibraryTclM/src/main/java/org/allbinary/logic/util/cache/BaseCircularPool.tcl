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

oo::class create ::BaseCircularPool {
    superclass ::JObject
}

oo::define ::BaseCircularPool {
    method initFields_BaseCircularPool {} {
        my jset circularIndexUtil {}
        my jset OBJECT_ARRAY {}
        my jset circularIndexUtil [::CircularIndexUtil::staticGet_NULL_CIRCULAR_INDEX_UTIL]
        my jset OBJECT_ARRAY [[::NullUtil::getInstance] jget NULL_OBJECT_ARRAY]
        return
    }

    constructor {} {
        next
        my initFields_BaseCircularPool
    }
    

    method getNextInstance {} {
        set anyType [[my jget OBJECT_ARRAY] get [[my jget circularIndexUtil] getIndex]]
        [my jget circularIndexUtil] next
        return $anyType
    }
    

    method init {allBinaryObjectFactoryInterface} {
        [my jget circularIndexUtil] setIndex 0
        set size [[my jget circularIndexUtil] getSize]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget OBJECT_ARRAY] set $index [$allBinaryObjectFactoryInterface getInstance]
        }
    }
    

    method getInstance {index} {
        return [[my jget OBJECT_ARRAY] get $index]
    }
}

namespace eval ::BaseCircularPool {
}


