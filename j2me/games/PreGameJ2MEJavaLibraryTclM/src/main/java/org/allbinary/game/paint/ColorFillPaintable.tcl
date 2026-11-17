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

oo::class create ::ColorFillPaintable {
    superclass ::ColorFillBasePaintable
}

oo::define ::ColorFillPaintable {
    method initFields_ColorFillPaintable {} {
        my jset displayInfoSingleton {}
        my jset displayInfoSingleton [::DisplayInfoSingleton::getInstance]
        return
    }
    

    constructor {basicColor} {
        next $basicColor
        my initFields_ColorFillPaintable
    }
    

    method paint {graphics} {
        $graphics setColor [my jget colorP]
        $graphics fillRect 0 0 [[my jget displayInfoSingleton] getLastWidth] [[my jget displayInfoSingleton] getLastHeight]
    }
}

namespace eval ::ColorFillPaintable {
}


