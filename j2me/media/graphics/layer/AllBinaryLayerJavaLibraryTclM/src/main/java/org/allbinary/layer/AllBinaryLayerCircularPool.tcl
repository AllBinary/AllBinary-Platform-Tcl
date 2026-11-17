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
# package org.allbinary.layer

oo::class create ::AllBinaryLayerCircularPool {
    superclass ::BaseCircularPool
}

oo::define ::AllBinaryLayerCircularPool {
    method initFields_AllBinaryLayerCircularPool {} {
        return
    }
    

    constructor {} {
        next
        my initFields_AllBinaryLayerCircularPool
    }
    

    method initAllBinaryLayerCircularPool {allbinaryLayerFactoryInterface total} {
        my jset circularIndexUtil [::CircularIndexUtil::createInstance $total]
        my jset OBJECT_ARRAY [jarray $total {}]
        for {set localIndex 0} {[expr {$localIndex < $total}]} {jpostincr localIndex 1} {
            [my jget OBJECT_ARRAY] set $localIndex [$allbinaryLayerFactoryInterface getInstance]
        }
    }
}

namespace eval ::AllBinaryLayerCircularPool {
}


