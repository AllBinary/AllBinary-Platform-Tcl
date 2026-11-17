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
# package org.allbinary.animation

oo::class create ::AdjustedVectorAnimation {
    superclass ::VectorAnimation
}

oo::define ::AdjustedVectorAnimation {
    method initFields_AdjustedVectorAnimation {} {
        my jset dx 0
        my jset dy 0
        
        
        return
    }
    

    constructor {currentPoints basicColor dx dy animationBehavior} {
        next $currentPoints $basicColor $animationBehavior
        my initFields_AdjustedVectorAnimation
        my jset dx $dx
        my jset dy $dy
    }
    

    method paintXY {graphics x y} {
        next $graphics [jint [expr {$x + [my jget dx]}]] [jint [expr {$y + [my jget dy]}]]
    }
}

namespace eval ::AdjustedVectorAnimation {
}


