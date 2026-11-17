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

oo::class create ::Rectangle {
    superclass ::JObject
}

oo::define ::Rectangle {
    method initFields_Rectangle {} {
        my jset point {}
        my jset width 0
        my jset height 0
        
        
        
        return
    }
    

    constructor {point width height} {
        next
        my initFields_Rectangle
        my jset point $point
        my jset width $width
        my jset height $height
    }
    

    method getPoint {} {
        return [my jget point]
    }
    

    method setPoint {point} {
        my jset point $point
    }
    

    method getMaxX {} {
        return [expr {[[my jget point] getX] + [my jget width]}]
    }
    

    method getMaxY {} {
        return [expr {[[my jget point] getY] + [my jget height]}]
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
    

    method toString {} {
        set stringBuffer [::StringMaker new]
        $stringBuffer append [[my getPoint] toString]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::CommonLabels::getInstance] jget WIDTH_LABEL]
        $stringBuffer appendint [my getWidth]
        $stringBuffer append [[::CommonSeps::getInstance] jget SPACE]
        $stringBuffer append [[::CommonLabels::getInstance] jget HEIGHT_LABEL]
        $stringBuffer appendint [my getHeight]
        $stringBuffer append " MaxX: "
        $stringBuffer appendint [my getMaxX]
        $stringBuffer append " MaxY: "
        $stringBuffer appendint [my getMaxY]
        return [$stringBuffer toString]
    }
}

namespace eval ::Rectangle {
}


