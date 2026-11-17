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
# package org.allbinary.vector

oo::class create ::VectorInfo {
    superclass ::JObject
}

oo::define ::VectorInfo {
    method initFields_VectorInfo {} {
        my jset width 0
        my jset height 0
        my jset points {}
        my jset totalFrames 0
        
        
        
        
        return
    }
    

    constructor {width height points totalFrames} {
        next
        my initFields_VectorInfo
        my jset width $width
        my jset height $height
        my jset points $points
        my jset totalFrames $totalFrames
    }
    

    method getWidth {} {
        return [my jget width]
    }
    

    method setWidth {width} {
        my jset width $width
    }
    

    method getHeight {} {
        return [my jget height]
    }
    

    method setHeight {height} {
        my jset height $height
    }
    

    method getPoints {} {
        return [my jget points]
    }
    

    method setPoints {points} {
        my jset points $points
    }
    

    method getTotalFrames {} {
        return [my jget totalFrames]
    }
    

    method setTotalFrames {totalFrames} {
        my jset totalFrames $totalFrames
    }
}

namespace eval ::VectorInfo {
}


