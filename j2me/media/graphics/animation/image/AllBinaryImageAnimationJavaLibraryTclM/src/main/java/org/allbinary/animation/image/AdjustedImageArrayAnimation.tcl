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
# package org.allbinary.animation.image

oo::class create ::AdjustedImageArrayAnimation {
    superclass ::ImageArrayAnimation
}

oo::define ::AdjustedImageArrayAnimation {
    method initFields_AdjustedImageArrayAnimation {} {
        my jset dx 0
        my jset dy 0
        my jset dx 0
        my jset dy 0
        return
    }
    

    constructor {imageArray dx dy animationBehavior} {
        next $imageArray $animationBehavior
        my initFields_AdjustedImageArrayAnimation
        my init $dx $dy
    }
    

    method init {dx dy} {
        my setDx $dx
        my setDy $dy
    }
    

    method paintXY {graphics x y} {
        next $graphics [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
    }
    

    method setDx {dx} {
        my jset dx $dx
    }
    

    method getDx {} {
        return [my jget dx]
    }
    

    method setDy {dy} {
        my jset dy $dy
    }
    

    method getDy {} {
        return [my jget dy]
    }
}

namespace eval ::AdjustedImageArrayAnimation {
}


