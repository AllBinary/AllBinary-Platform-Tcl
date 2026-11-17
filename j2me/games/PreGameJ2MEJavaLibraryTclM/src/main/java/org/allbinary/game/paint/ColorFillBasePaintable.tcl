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
# package org.allbinary.game.paint

oo::class create ::ColorFillBasePaintable {
    superclass ::Paintable
}

oo::define ::ColorFillBasePaintable {
    method initFields_ColorFillBasePaintable {} {
        my jset basicColor {}
        my jset colorP 0
        my jset basicColor [[::BasicColorFactory::getInstance] jget WHITE]
        my jset colorP 0
        return
    }
    

    constructor {basicColor} {
        next
        my initFields_ColorFillBasePaintable
        my setBasicColorP $basicColor
    }
    

    method setBasicColorP {basicColor} {
        my jset basicColor $basicColor
        my setColor [[my getBasicColorP] intValue]
    }
    

    method getBasicColorP {} {
        return [my jget basicColor]
    }
    

    method getColor {} {
        return [my jget colorP]
    }
    

    method setColor {color} {
        my jset colorP $color
    }
    

    method paint {graphics} {
    }
}

namespace eval ::ColorFillBasePaintable {
}


