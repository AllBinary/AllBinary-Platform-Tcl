# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.view

oo::class create ::ViewPosition {
    superclass ::ViewPositionBase
}

oo::define ::ViewPosition {
    method initFields_ViewPosition {} {
        my jset allbinaryLayer {}
        my jset allbinaryLayer [::AllBinaryLayer::staticGet_NULL_ALLBINARY_LAYER]
        return
    }
    
    

    constructor {x y z} {
        next $x $y $z
        my initFields_ViewPosition
    }
    

    method getX {} {
        return [[my jget allbinaryLayer] getXP]
    }
    

    method getY {} {
        return [[my jget allbinaryLayer] getYP]
    }
    

    method getZ {} {
        return [[my jget allbinaryLayer] getZP]
    }
    

    method getX2 {} {
        return [expr {[my getX] + [[my jget allbinaryLayer] getWidth]}]
    }
    

    method getY2 {} {
        return [expr {[my getY] + [[my jget allbinaryLayer] getHeight]}]
    }
    

    method getZ2 {} {
        return [jint ([expr {[my getZ] + [[my jget allbinaryLayer] getDepth]}])]
    }
    

    method setAllbinaryLayer {allbinaryLayer} {
        my jset allbinaryLayer $allbinaryLayer
    }
}

namespace eval ::ViewPosition {
    proc getInstanceD {} {
        return [::ViewPosition new 0 0 0]
    }
}


