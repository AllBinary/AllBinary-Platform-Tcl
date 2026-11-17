# Generated Code Do Not Modify
# package org.allbinary.animation

oo::class create ::FillAnimation {
    superclass ::IndexedAnimation
}

oo::define ::FillAnimation {
    method initFields_FillAnimation {} {
        my jset pixelBuffer {}
        my jset width 0
        my jset height 0
        
        
        
        return
    }
    

    constructor {pixelBuffer width height animationBehavior} {
        next $animationBehavior
        my initFields_FillAnimation
        my jset width 100
        my jset height 100
        my jset pixelBuffer $pixelBuffer
    }
    

    method setBasicColorP {basicColor} {
        set changed false
        if {[expr {[expr {[my getBasicColorP] eq {}}] || [expr {[[my getBasicColorP] intValue] != [$basicColor intValue]}]}]} {
            set changed true
        }
        next $basicColor
        if {$changed} {
            my updateModifiers
        }
    }
    

    method changeBasicColor {basicColor} {
        set changed false
        if {[expr {[expr {[my getChangeBasicColor] eq {}}] || [expr {[[my getChangeBasicColor] intValue] != [$basicColor intValue]}]}]} {
            set changed true
        }
        next $basicColor
        if {$changed} {
            my updateModifiers
        }
    }
    

    method setAlpha {alpha} {
        set changed false
        if {[expr {[my jget alphaP] != $alpha}]} {
            set changed true
        }
        next $alpha
        if {$changed} {
            my updateModifiers
        }
    }
    

    method setScale {scaleX scaleY} {
    }
    

    method setMaxScale {maxScaleX maxScaleY} {
    }
    

    method updateModifiers {} {
    }
    

    method paint {g} {
        $g drawRGB [my jget pixelBuffer] 0 [my jget width] 0 0 [my jget width] [my jget height] true
    }
}

namespace eval ::FillAnimation {
}


