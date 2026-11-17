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

oo::class create ::OverScanColorFillPaintable {
    superclass ::ColorFillPaintable
}

oo::define ::OverScanColorFillPaintable {
    method initFields_OverScanColorFillPaintable {} {
        return
    }
    

    constructor {basicColor} {
        next $basicColor
        my initFields_OverScanColorFillPaintable
    }
    

    method paint {graphics} {
        $graphics setColor [my jget colorP]
        $graphics fillRect [expr {-[$graphics getClipX]}] [expr {-[$graphics getClipY]}] [expr {[[my jget displayInfoSingleton] getLastWidth] + ([expr {[$graphics getClipX] * 2}])}] [expr {[[my jget displayInfoSingleton] getLastHeight] + ([expr {[$graphics getClipY] * 2}])}]
    }
}

namespace eval ::OverScanColorFillPaintable {
}


