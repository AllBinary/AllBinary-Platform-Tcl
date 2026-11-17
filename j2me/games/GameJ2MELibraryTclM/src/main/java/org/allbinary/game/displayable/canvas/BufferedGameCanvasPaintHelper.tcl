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

oo::class create ::BufferedGameCanvasPaintHelper {
    superclass ::ProcessPaintable
}

oo::define ::BufferedGameCanvasPaintHelper {
    method initFields_BufferedGameCanvasPaintHelper {} {
        my jset gameCanvas {}
        my jset offScreenImage {}
        my jset previousImage {}
        my jset circularIndexUtil {}
        my jset drawCircularIndexUtil {}
        my jset anchor 0
        my jset gameCanvas [::NullCanvas::staticGet_NULL_CANVAS]
        my jset offScreenImage [jarray [::BufferedGameCanvasPaintHelper::staticGet_MAX_IMAGES] {}]
        my jset previousImage [::NullImage::staticGet_NULL_IMAGE]
        my jset circularIndexUtil [::CircularIndexUtil::createInstance [::BufferedGameCanvasPaintHelper::staticGet_MAX_IMAGES]]
        my jset drawCircularIndexUtil [::CircularIndexUtil::createInstanceAt [jint [expr {[::BufferedGameCanvasPaintHelper::staticGet_MAX_IMAGES] - 1}]] [::BufferedGameCanvasPaintHelper::staticGet_MAX_IMAGES]]
        my jset anchor [::Anchor::staticGet_TOP_LEFT]
        return
    }
    

    constructor {gameCanvas} {
        next
        my initFields_BufferedGameCanvasPaintHelper
        error [jexception Exception "No Longer Used"]
    }
    

    method process {} {
        set myCanvas ([my jget gameCanvas])
        $myCanvas draw [[[my jget offScreenImage] get [[my jget circularIndexUtil] getIndex]] getGraphics]
        [my jget circularIndexUtil] next
        [my jget drawCircularIndexUtil] next
    }
    

    method paint {graphics} {
        my jset previousImage [[my jget offScreenImage] get [[my jget drawCircularIndexUtil] getIndex]]
        $graphics drawImage [my jget previousImage] 0 0 [my jget anchor]
    }
}

namespace eval ::BufferedGameCanvasPaintHelper {
    variable MAX_IMAGESValue {}
    variable MAX_IMAGESSet 0
    proc staticGet_MAX_IMAGES {} {
        variable MAX_IMAGESValue
        variable MAX_IMAGESSet
        if {!$MAX_IMAGESSet} {
            set MAX_IMAGESSet 1
            set MAX_IMAGESValue 4
        }
        return $MAX_IMAGESValue
    }
    proc staticSet_MAX_IMAGES {value} {
        variable MAX_IMAGESValue
        variable MAX_IMAGESSet
        set MAX_IMAGESSet 1
        set MAX_IMAGESValue $value
    }
}


