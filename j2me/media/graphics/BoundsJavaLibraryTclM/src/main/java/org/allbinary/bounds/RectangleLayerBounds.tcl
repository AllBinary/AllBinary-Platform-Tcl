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

oo::class create ::RectangleLayerBounds {
    superclass ::LayerBounds
}

oo::define ::RectangleLayerBounds {
    method initFields_RectangleLayerBounds {} {
        return
    }
    

    constructor {rectangle} {
        next $rectangle
        my initFields_RectangleLayerBounds
    }
    

    method visit {boundsVisitorInterface} {
        if {[expr {[$boundsVisitorInterface getX] > [[my jget rectangle] getMaxX]}]} {
            $boundsVisitorInterface maxX
        }
        if {[expr {[$boundsVisitorInterface getY] > [[my jget rectangle] getMaxY]}]} {
            $boundsVisitorInterface maxY
        }
        if {[expr {[$boundsVisitorInterface getX] < [[[my jget rectangle] getPoint] getX]}]} {
            $boundsVisitorInterface minX
        }
        if {[expr {[$boundsVisitorInterface getY] < [[[my jget rectangle] getPoint] getY]}]} {
            $boundsVisitorInterface minY
        }
    }
}

namespace eval ::RectangleLayerBounds {
}


