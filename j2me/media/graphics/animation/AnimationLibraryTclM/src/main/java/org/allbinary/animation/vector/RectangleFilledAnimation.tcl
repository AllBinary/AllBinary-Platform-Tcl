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

oo::class create ::RectangleFilledAnimation {
    superclass ::Animation
}

oo::define ::RectangleFilledAnimation {
    method initFields_RectangleFilledAnimation {} {
        my jset widthP 0
        my jset heightP 0
        
        
        return
    }
    

    constructor {width height basicColor} {
        next
        my initFields_RectangleFilledAnimation
        my jset widthP $width
        my jset heightP $height
        my setBasicColorP $basicColor
    }
    

    method nextFrame {} {
    }
    

    method paintXY {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my getBasicColorP] [my getColor]
        $graphics fillRect $x $y [my jget widthP] [my jget heightP]
    }
    

    method setWidth {width} {
        my jset widthP $width
    }
    

    method setHeight {height} {
        my jset heightP $height
    }
    

    method getBasicColorP {} {
        return [next]
    }
    

    method setBasicColorP {basicColor} {
        next $basicColor
    }
}

namespace eval ::RectangleFilledAnimation {
}


