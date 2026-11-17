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
# package org.allbinary.animation.vector

oo::class create ::RectangleAdjustedAnimation {
    superclass ::Animation
}

oo::define ::RectangleAdjustedAnimation {
    method initFields_RectangleAdjustedAnimation {} {
        my jset width 0
        my jset height 0
        my jset offsetX 0
        my jset offsetY 0
        
        
        
        
        return
    }
    

    constructor {width height offsetX offsetY basicColor} {
        next
        my initFields_RectangleAdjustedAnimation
        my jset width $width
        my jset height $height
        my jset offsetX $offsetX
        my jset offsetY $offsetY
        my setBasicColorP $basicColor
    }
    

    method nextFrame {} {
    }
    

    method paintXY {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my getBasicColorP] [my getColor]
        $graphics drawRect [jint [expr {$x + [my jget offsetX]}]] [jint [expr {$y + [my jget offsetY]}]] [my jget width] [my jget height]
    }
    

    method setWidth {width} {
        my jset width $width
    }
    

    method setHeight {height} {
        my jset height $height
    }
    

    method setOffsetX {offsetX} {
        my jset offsetX $offsetX
    }
    

    method setOffsetY {offsetY} {
        my jset offsetY $offsetY
    }
    

    method getBasicColorP {} {
        return [next]
    }
    

    method setBasicColorP {basicColor} {
        next $basicColor
    }
}

namespace eval ::RectangleAdjustedAnimation {
}


