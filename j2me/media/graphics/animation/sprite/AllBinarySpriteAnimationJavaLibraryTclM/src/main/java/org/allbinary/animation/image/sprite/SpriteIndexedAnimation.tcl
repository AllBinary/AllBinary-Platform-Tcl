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
# package org.allbinary.animation.image.sprite

oo::class create ::SpriteIndexedAnimation {
    superclass ::IndexedAnimation
}

oo::define ::SpriteIndexedAnimation {
    method initFields_SpriteIndexedAnimation {} {
        my jset sprite {}
        my jset image {}
        my jset basicColorArray {}
        
        
        
        return
    }
    

    constructor {sprite image basicColorArray animationBehavior} {
        next $animationBehavior
        my initFields_SpriteIndexedAnimation
        my jset sprite $sprite
        my jset image $image
        my jset basicColorArray $basicColorArray
        if {[expr {[expr {[[my jget basicColorArray] length] != 0}] && [expr {[my getSize] != [[my jget basicColorArray] length]}]}]} {
            error [jexception Exception [[[[[[::StringMaker new] append [[::CommonLabels::getInstance] jget TOTAL_LABEL]] appendint [my getSize]] append "!="] appendint [[my jget basicColorArray] length]] toString]]
        }
    }
    

    method getAnimationSize {} {
        return [my getSize]
    }
    

    method setBasicColorP {basicColor} {
        for {set index 0} {[expr {$index < [[my jget basicColorArray] length]}]} {jpostincr index 1} {
            if {[expr {$basicColor eq [[my jget basicColorArray] get $index]}]} {
                my setFrame $index
                break
            }
        }
    }
    

    method getBasicColorP {} {
        if {[expr {[[my jget basicColorArray] length] < [my getFrame]}]} {
            return [[my jget basicColorArray] get [my getFrame]]
        } else {
            return [[::BasicColorFactory::getInstance] jget WHITE]
        }
    }
    

    method paintFrame {graphics frame x y} {
        my setFrame $frame
        [my jget sprite] setPosition $x $y
        [my jget sprite] paint $graphics
    }
    

    method paintXY {graphics x y} {
        [my jget sprite] setPosition $x $y
        [my jget sprite] paint $graphics
    }
    

    method paint {graphics} {
        [my jget sprite] paint $graphics
    }
    

    method nextFrame {} {
        [my jget sprite] nextFrame
    }
    

    method previousFrame {} {
        [my jget sprite] prevFrame
    }
    

    method getSize {} {
        return [[my jget sprite] getRawFrameCount]
    }
    

    method setFrame {frame} {
        [my jget sprite] setFrame $frame
    }
    

    method getFrame {} {
        return [[my jget sprite] getFrame]
    }
    

    method isLastFrame {} {
        if {[expr {[[my jget sprite] getFrame] == [jint [expr {[my getSize] - 1}]]}]} {
            return true
        } else {
            return false
        }
    }
    

    method getLastFrame {} {
        return [my getSize]
    }
    

    method setSequence {sequence} {
    }
    

    method getSequence {} {
        return [::PrimitiveIntUtil::getArrayInstance]
    }
    

    method close {} {
    }
    

    method finalize {} {
    }
}

namespace eval ::SpriteIndexedAnimation {
}


