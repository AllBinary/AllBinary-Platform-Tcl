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
# package org.allbinary.game.displayable.canvas

oo::class create ::BasicPaintablesCanvas {
    superclass ::GameCommandCanvas
}

oo::define ::BasicPaintablesCanvas {
    method initFields_BasicPaintablesCanvas {} {
        my jset paintableArray {}
        my jset colorFillPaintable {}
        
        
        return
    }
    

    constructor {cmdListener name allBinaryGameLayerManager paintableArray} {
        next $cmdListener $name [$allBinaryGameLayerManager getBackgroundBasicColor] [$allBinaryGameLayerManager getForegroundBasicColor]
        my initFields_BasicPaintablesCanvas
        my jset paintableArray $paintableArray
        my jset colorFillPaintable [[::ColorFillPaintableFactory::getInstance] getInstance [$allBinaryGameLayerManager getBackgroundBasicColor] false]
    }
    

    method paint {graphics} {
        [my jget colorFillPaintable] paint $graphics
        $graphics setColor [my jget foregroundColor]
        for {set index [jint [expr {[[my jget paintableArray] length] - 1}]]} {[expr {$index >= 0}]} {jpostincr index -1} {
            [[my jget paintableArray] get $index] paint $graphics
        }
        next $graphics
    }
}

namespace eval ::BasicPaintablesCanvas {
}


