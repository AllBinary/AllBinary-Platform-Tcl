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
# package org.allbinary.graphics.paint

oo::class create ::StringLocationPaintable {
    superclass ::LocationPaintable
}

oo::define ::StringLocationPaintable {
    method initFields_StringLocationPaintable {} {
        my jset value {}
        
        return
    }
    

    constructor {value} {
        next
        my initFields_StringLocationPaintable
        my jset value $value
    }
    

    method paintXY {graphics x y} {
        $graphics drawString [my jget value] $x $y 0
    }
}

namespace eval ::StringLocationPaintable {
}


