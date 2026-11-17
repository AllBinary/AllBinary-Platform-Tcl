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

oo::class create ::AdjustedCircleAnimation {
    superclass ::CircleAnimation
}

oo::define ::AdjustedCircleAnimation {
    method initFields_AdjustedCircleAnimation {} {
        my jset xAdjustment 0
        my jset yAdjustment 0
        my jset xAdjustment 0
        my jset yAdjustment 0
        return
    }
    
    
    

    constructor {width height basicColor} {
        next $width $height $basicColor
        my initFields_AdjustedCircleAnimation
    }
    

    method initXY {xAdjustment yAdjustment} {
        my jset xAdjustment $xAdjustment
        my jset yAdjustment $yAdjustment
    }
    

    method init {innerWidth} {
        if {[::AndroidUtil::isAndroid]} {
            set widthPortion ([jdiv ([jint [expr {([jdiv $innerWidth 3]) * 10}]]) 7])
            my jset xAdjustment [expr {-([expr {([expr {[my jget width] >> 1}]) - $widthPortion}])}]
            my jset yAdjustment [my jget xAdjustment]
        } else {
            my jset xAdjustment [expr {-([expr {([expr {[my jget width] >> 1}]) - $innerWidth}])}]
            my jset yAdjustment [my jget xAdjustment]
        }
    }
    

    method paintXY {graphics x y} {
        [my jget basicSetColorUtil] setBasicColorP3 $graphics [my getBasicColorP] [my getColor]
        $graphics drawArc [jint [expr {$x + [my jget xAdjustment]}]] [jint [expr {$y + [my jget yAdjustment]}]] [my jget width] [my jget height] 0 [my jget TOTAL_ANGLE]
    }
}

namespace eval ::AdjustedCircleAnimation {
    proc createAnimation {width height xAdjustment yAdjustment basicColor} {
        set adjustedCircleAnimation [::AdjustedCircleAnimation new $width $height $basicColor]
        $adjustedCircleAnimation initXY $xAdjustment $yAdjustment
        return $adjustedCircleAnimation
    }
    proc createW {width height innerWidth basicColor} {
        set adjustedCircleAnimation [::AdjustedCircleAnimation new $width $height $basicColor]
        $adjustedCircleAnimation init $innerWidth
        return $adjustedCircleAnimation
    }
}


