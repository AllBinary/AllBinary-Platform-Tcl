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

oo::class create ::AdjustedSpriteIndexedAnimation {
    superclass ::SpriteIndexedAnimation
}

oo::define ::AdjustedSpriteIndexedAnimation {
    method initFields_AdjustedSpriteIndexedAnimation {} {
        my jset dx 0
        my jset dy 0
        
        
        return
    }
    

    constructor {sprite image basicColorArray dx dy animationBehavior} {
        next $sprite $image $basicColorArray $animationBehavior
        my initFields_AdjustedSpriteIndexedAnimation
        my jset dx $dx
        my jset dy $dy
    }
    

    method paintFrame {graphics frame x y} {
        my setFrame $frame
        [my jget sprite] setPosition [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
        next $graphics
    }
    

    method paintXY {g x y} {
        [my jget sprite] setPosition [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
        next $g
    }
    

    method paint {g} {
        [my jget sprite] setPosition [my jget dx] [my jget dy]
        next $g
    }
}

namespace eval ::AdjustedSpriteIndexedAnimation {
}


