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
# package org.allbinary.logic.util.event

oo::class create ::AllBinaryEventCircularPool {
    superclass ::BaseCircularPool
}

oo::define ::AllBinaryEventCircularPool {
    method initFields_AllBinaryEventCircularPool {} {
        return
    }
    

    constructor {max} {
        next
        my initFields_AllBinaryEventCircularPool
        my jset OBJECT_ARRAY [jarray $max {}]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance $max]
    }
    

    method initAllBinaryEventCircularPool {allBinaryEventObjectFactoryInterface} {
        [my jget circularIndexUtil] setIndex 0
        set size [[my jget circularIndexUtil] getSize]
        for {set index 0} {[expr {$index < $size}]} {jpostincr index 1} {
            [my jget OBJECT_ARRAY] set $index [$allBinaryEventObjectFactoryInterface getInstance]
        }
    }
}

namespace eval ::AllBinaryEventCircularPool {
}


