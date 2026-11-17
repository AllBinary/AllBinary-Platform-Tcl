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
# package org.allbinary.graphics

oo::class create ::GPointCircularPool {
    superclass ::BaseCircularPool
}

oo::define ::GPointCircularPool {
    method initFields_GPointCircularPool {} {
        return
    }
    

    constructor {size} {
        next
        my initFields_GPointCircularPool
        my jset circularIndexUtil [::CircularIndexUtil::createInstance $size]
        my jset OBJECT_ARRAY [jarray $size {}]
        for {set index [jint [expr {$size - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [my jget OBJECT_ARRAY] set $index [::CustomGPoint::getInstance3 0 0]
        }
    }
}

namespace eval ::GPointCircularPool {
}


