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
# package org.allbinary.bounds

oo::class create ::TopULayerBounds {
    superclass ::LayerBounds
}

oo::define ::TopULayerBounds {
    method initFields_TopULayerBounds {} {
        return
    }
    

    constructor {rectangle} {
        next $rectangle
        my initFields_TopULayerBounds
    }
    

    method visit {boundsVisitorInterface} {
        if {[expr {[$boundsVisitorInterface getX] > [[my jget rectangle] getMaxX]}]} {
            $boundsVisitorInterface maxX
        }
        if {[expr {[$boundsVisitorInterface getX] < [[[my jget rectangle] getPoint] getX]}]} {
            $boundsVisitorInterface minX
        }
        if {[expr {[$boundsVisitorInterface getY] < [[[my jget rectangle] getPoint] getY]}]} {
            $boundsVisitorInterface minY
        }
    }
}

namespace eval ::TopULayerBounds {
}


