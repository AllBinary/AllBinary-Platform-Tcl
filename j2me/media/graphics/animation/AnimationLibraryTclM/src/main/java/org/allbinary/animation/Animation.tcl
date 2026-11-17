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
# package org.allbinary.animation

oo::class create ::Animation {
    superclass ::JObject
}

oo::define ::Animation {
    method initFields_Animation {} {
        my jset basicSetColorUtil {}
        my jset basicColor {}
        my jset colorP 0
        my jset changeBasicColorP {}
        my jset changeColorP 0
        my jset alphaP 0
        my jset basicSetColorUtil [::BasicColorSetUtil::getInstance]
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        my jset colorP 0
        my jset changeBasicColorP [[::BasicColorFactory::getInstance] jget NULL_COLOR]
        my jset changeColorP 0
        my jset alphaP 0
        return
    }
    

    constructor {} {
        next
        my initFields_Animation
    }
    

    method setAlpha {alpha} {
        my jset alphaP $alpha
    }
    

    method nextFrame {} {
    }
    

    method paintXY {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my getBasicColorP] [my getColor]
    }
    

    method paintThreedXYZ {graphics x y z} {
    }
    

    method isThreed {} {
        return false
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
        my jset colorP [[my jget basicColor] intValue]
    }
    

    method setBackgroundBasicColorP {basicColor} {
    }
    

    method getChangeBasicColor {} {
        return [my jget changeBasicColorP]
    }
    

    method changeBasicColor {basicColor} {
        my jset changeBasicColorP $basicColor
        my jset changeColorP [[my jget changeBasicColorP] intValue]
    }
    

    method getChangeColor {} {
        return [my jget changeColorP]
    }
    

    method getColor {} {
        return [my jget colorP]
    }
    

    method setScale {scaleX scaleY} {
    }
    

    method setMaxScale {maxScaleX maxScaleY} {
    }
    

    method set {gl} {
    }
    

    method setDx {dx} {
    }
    

    method getDx {} {
        return 0
    }
    

    method setDy {dy} {
    }
    

    method getDy {} {
        return 0
    }
}

namespace eval ::Animation {
}


