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

oo::class create ::Line {
    superclass ::JObject
}

oo::define ::Line {
    method initFields_Line {} {
        my jset p1 {}
        my jset p2 {}
        my jset deltaX 0.0
        my jset deltaY 0.0
        
        
        my jset deltaX 0.0
        my jset deltaY 0.0
        return
    }
    

    constructor {p1 p2} {
        next
        my initFields_Line
        my jset p1 [[::PointFactory::getInstance] jget ZERO_ZERO]
        my jset p2 [my jget p1]
        my setP1 $p1
        my setP2 $p2
    }
    

    method getGradient {} {
        return [expr {[my getDeltaY] / [my getDeltaX]}]
    }
    

    method update {} {
        my jset deltaX [expr {[expr {double([[my getP1] getX])}] - [[my getP2] getX]}]
        my jset deltaY [expr {[expr {double([[my getP1] getY])}] - [[my getP2] getY]}]
    }
    

    method getDeltaX {} {
        return [my jget deltaX]
    }
    

    method getDeltaY {} {
        return [my jget deltaY]
    }
    

    method getP1 {} {
        return [my jget p1]
    }
    

    method getP2 {} {
        return [my jget p2]
    }
    

    method setP1 {p1} {
        my jset p1 $p1
        my update
    }
    

    method setP2 {p2} {
        my jset p2 $p2
        my update
    }
}

namespace eval ::Line {
}


